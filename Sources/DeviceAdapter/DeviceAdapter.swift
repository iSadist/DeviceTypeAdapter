// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
/// A view that adapts to the device type. The possible device types are iPhone and iPad.
/// It selects the correct view to use.
///
/// Usage:
/// ```
/// DeviceTypeAdapter(
///    phone: Text("Phone"),
///    pad: Text("Pad")
/// )
public struct DeviceTypeAdapter<T: View, S: View>: View {
    private let deviceType = UIDevice.current.userInterfaceIdiom

    /// The view to show on phone
    @ViewBuilder
    public var phone: T

    /// The view to show on pad
    @ViewBuilder
    public var pad: S

    public var body: some View {
        if deviceType == .pad {
            pad
        } else {
            phone
        }
    }
}
