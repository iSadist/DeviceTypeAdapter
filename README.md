# DeviceTypeAdapter

DeviceTypeAdapter is a simple SwiftUI component that allows you to quickly create different UI for iPhone and iPad in a single SwiftUI view.

## Installation
Include the package in your project using Swift Package Manager.

Once included, simply import the package with
```import DeviceTypeAdapter```

To use it just wrap your view in the `DeviceTypeAdapter` view and provide the views for iPhone and iPad.

```swift
 DeviceTypeAdapter(
    phone: Text("Phone"),
    pad: Text("Pad")
 )
```
