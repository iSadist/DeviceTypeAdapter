import SwiftUI
import XCTest
@testable import DeviceAdapter

final class DeviceAdapterTests: XCTestCase {
    func testCompileSuccessfully() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods

        struct ContentView: View {
            @available(iOS 13.0.0, *)
            var body: some View {
                DeviceTypeAdapter {
                    Text("Phone")
                } pad: {
                    Text("iPad")
                }
            }
        }
    }
}
