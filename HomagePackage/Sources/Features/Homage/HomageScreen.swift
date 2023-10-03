import SwiftUI

package struct HomageScreen: View {
    @StateObject private var viewModel: HomageViewModel

    package var body: some View {
        HomageView()
    }

    @MainActor
    package init() {
        self._viewModel = StateObject(wrappedValue: HomageViewModel())
    }
}

// MARK: - Privates

private extension HomageScreen {}

// MARK: - Previews

#Preview {
    NavigationStack {
        HomageScreen()
    }
}
