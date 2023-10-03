import SwiftUI
import HomageFeature

public struct ProductionRootScreen: View {
    public var body: some View {
        NavigationStack {
            HomageScreen()
        }
    }

    public init() {}
}

// MARK: - Previews

#Preview {
    ProductionRootScreen()
}
