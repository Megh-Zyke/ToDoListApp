
# SwiftUI To-Do List App

This is a basic To-Do List app built using SwiftUI. It allows users to add, view, and delete tasks.

This is an implementaion of all the basic concepts used in SwiftUI which provides an rudrimentary understanding of how SwiftUI works.
This project is based on the MVVM model.MVVM is an architectural pattern commonly used in software development, including iOS app development using SwiftUI. Here's a brief overview of MVVM:

1. **Model:**
   - Represents the data and business logic of the application.
   - Manages the data and enforces business rules.
   - Usually does not have any dependencies on the user interface (UI).

2. **View:**
   - Represents the user interface (UI) elements.
   - Displays information from the ViewModel to the user.
   - Captures user input and forwards it to the ViewModel.

3. **ViewModel:**
   - Acts as an intermediary between the Model and the View.
   - Contains the presentation logic and state for the View.
   - Transforms the data from the Model into a form that can be easily presented by the View.
   - Manages user interactions and updates the Model accordingly.

In the context of SwiftUI, the MVVM pattern is often implemented using `@ObservedObject` and `@Published` property wrappers for reactive programming, allowing the ViewModel to notify the View when changes occur.

## Features

- **Add Tasks:** Easily add new tasks to the to-do list.
- **View Tasks:** See a list of all added tasks with their completion status.
- **Delete Tasks:** Remove completed or unwanted tasks.

## Getting Started

### Prerequisites

- Xcode (Minimum version: Xcode 12)
- Swift 5.3 or later

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/todo-list-swiftui.git
   ```

2. Open the project in Xcode:

   ```bash
   cd todo-list-swiftui
   open TodoListApp.xcodeproj
   ```

3. Build and run the app in the Xcode simulator or on a physical device.


## Usage

1. Open the app.
2. Tap the "+" button to add a new task.
3. Enter the task details and tap "Save."
4. View your added tasks in the list.
5. Swipe left on a task to delete it.


## Screenshots
