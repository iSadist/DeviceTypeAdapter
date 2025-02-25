//
//  OnRotate.swift
//  HueReminders
//
//  This file adds a ViewModifier to listen to rotation events from
//  the device and use a state variable in the view to track the
//  current orientation.
//
//  Created by Jan Svensson on 2023-06-13.
//  Copyright © 2023 Jan Svensson. All rights reserved.
//

import SwiftUI

// Our custom view modifier to track rotation and
// call our action
@available(iOS 13.0, *)
struct DeviceRotationViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void

    @State
    var orientation: UIDeviceOrientation?

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                let newOrientation = UIDevice.current.orientation

                guard self.orientation != UIDevice.current.orientation else {
                    return
                }

                if newOrientation == .faceUp || newOrientation == .faceDown {
                    return
                }

                self.orientation = UIDevice.current.orientation
                action(UIDevice.current.orientation)
            }
    }
}

// A View wrapper to make the modifier easier to use
@available(iOS 13.0, *)
extension View {
    public func onRotate(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(DeviceRotationViewModifier(action: action))
    }
}
