import SwiftUI
import RealityKit

public struct EntityMovementViewModifier: ViewModifier {
    private let entity: Entity
    @State private var sourceTransform: Transform?

    public init(moving entity: Entity) {
        self.entity = entity
    }

    public func body(content: Content) -> some View {
        content
            .gesture(
                DragGesture()
                    .simultaneously(with: RotateGesture3D(constrainedToAxis: .y))
                    .targetedToEntity(entity)
                    .onChanged { value in
                        if sourceTransform == nil {
                            sourceTransform = entity.transform
                        }
                        if let rotation = value.second?.rotation {
                            let rotationTransform = Transform(AffineTransform3D(rotation: rotation))
                            entity.transform.rotation = sourceTransform!.rotation * rotationTransform.rotation
                        } else if let translation = value.first?.translation3D {
                            let convertedTranslation = value.convert(translation, from: .local, to: entity.parent!)
                            entity.transform.translation = sourceTransform!.translation + convertedTranslation
                        }
                    }
                    .onEnded { _ in
                        sourceTransform = nil
                    }
            )
    }
}

public extension View {
    func enableMovingEntity(_ entity: Entity) -> some View {
        modifier(EntityMovementViewModifier(moving: entity))
    }
}
