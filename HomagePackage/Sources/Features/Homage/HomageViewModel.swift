import Foundation

// MARK: UI state

struct HomageUiState {
}

// MARK: - Action

enum HomageAction {
}

// MARK: - Error

enum HomageError: LocalizedError {
}

// MARK: - View model

@MainActor
final class HomageViewModel: ObservableObject {
    @Published private(set) var uiState: HomageUiState

    init() {
        self.uiState = HomageUiState()
    }

    func send(_ action: HomageAction) {
    }
}

// MARK: - Privates

private extension HomageViewModel {
}
