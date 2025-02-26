# DeviceTypeAdapter

DeviceTypeAdapter is a simple SwiftUI component that allows you to quickly create different UI for iPhone and iPad in a single SwiftUI view.

## Installation
Include the package in your project using Swift Package Manager.

Once included, simply import the package with
```import DeviceTypeAdapter```

To use it just wrap your view in the `DeviceTypeAdapter` view and provide the views for iPhone and iPad.

```swift
DeviceTypeAdapter {
    Text("Phone")
} pad: {
    Text("iPad")
}
```

## onRotate
In addition to the DeviceTypeAdapter, the onRotate view modifier helps deal with having different view layouts for horizontal and vertical views. Here is an example of how to use it.

...
```swift
struct ExampleView: View {
    @State private var orientation = UIDevice.current.orientation

    var body: some View {
        ZStack {
            if orientation == .portrait {
                VStack {
                    ... portrait view code
                }
            } else {
                HStack {
                    ... landscape view code
                }
            }
        }
    }
}
```

The advantage with onRotate is that the face up and face down states are ignored, resulting in not having to worry about handling those.
