# EntityDragAndRotateKit

A lightweight Swift package for **visionOS** that makes your entity draggable and rotatable in your RealityView
 within a `RealityView`.

## ✨ Features

- 👆 Drag `Entity` instances in world space
- 🔄 Rotate them around the Y-axis using `RotateGesture3D`
- ✅ Easily attach to any `View` using SwiftUI modifiers
- 💡 Designed for **visionOS** apps using `RealityKit`

## Usage

- RealityView { ... }..enableMovingEntity('yourModelEntity' ?? ModelEntity())

## 🔧 Requirements

- visionOS 1.0+
- Swift 5.9+
- Xcode 15+
- RealityKit + SwiftUI

## 📦 Installation (Swift Package Manager)

1. Open your **visionOS project** in Xcode.
2. Go to **File > Add Packages...**
3. Paste the URL of this repository:

