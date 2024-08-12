# Todo List iOS App

## Overview

This is a simple Todo List iOS app built using Swift and SwiftUI. The app allows users to add, mark as completed, and delete todo items. It demonstrates basic features of SwiftUI and local persistence using `UserDefaults`.

## Features

- **Add New Todo Items**: Enter a new todo item and add it to the list.
- **Display Todo Items**: View a list of todos with titles and completion status.
- **Mark Items as Completed**: Tap on a todo item to toggle its completion status.
- **Delete Todo Items**: Swipe to delete items from the list.
- **Local Persistence**: Todos are saved between app launches using `UserDefaults`.

## Requirements

- macOS with Xcode installed
- iOS 14.0 or later

## Installation

1. **Clone the Repository**:

   ```sh
   git clone https://github.com/yourusername/todolist-ios-app.git
Open the Project:
---------------------

1.Open the TodoListApp.xcodeproj file in Xcode.

2.Build and Run:

3.Select a simulator or a connected device from the toolbar.

4.Click the Run button or press Cmd + R to build and run the app.


Usage
-----------------------

1. Add a Todo:

          Enter a title for the new todo item in the text field at the bottom of the screen.
          Tap the "Add" button to add the item to the list.

2. Toggle Completion:

          Tap on a todo item to mark it as completed or incomplete. A checkmark will appear next to completed items.

3. Delete a Todo:

          Swipe left on a todo item to reveal the delete button and remove it from the list.


Code Overview
---------------------

1. TodoItem.swift: Defines the model for todo items.

2. TodoListViewModel.swift: Manages the list of todos and provides functionality to add, remove, and toggle completion.

3. ContentView.swift: Implements the user interface of the app using SwiftUI.

4. AppDelegate.swift: Provides a basic template for app-level event handling.


Contributing
-------------------

If you’d like to contribute to this project, please fork the repository and submit a pull request with your changes. You can also open issues to report bugs or request features.

License
-------------

This project is licensed under the MIT License. See the LICENSE file for more details.
