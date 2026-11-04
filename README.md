# Flutter Profile Screen

## Overview

A simple mobile profile screen built using Flutter, based on a provided UI reference design.

This project focuses on practicing Flutter UI development, understanding widget composition, organizing code into reusable components, and building responsive layouts.

## Features

- Profile header with profile image, name, and description.
- Profile statistics:
  - Followers
  - Following
  - Posts
- Edit Profile button.
- Settings button.
- Wallet and Insights information cards.
- Recent Activity section.
- Bottom navigation bar.
- Responsive layout for different screen sizes.

## Project Structure

```text
lib/
│
├── main.dart
│
├── screens/
│   └── profile_screen.dart
│
├── widgets/
│   ├── profile_header.dart
│   ├── profile_statistics.dart
│   ├── profile_action_buttons.dart
│   ├── info_card.dart
│   ├── activity_item.dart
│   └── bottom_navigation.dart
│
├── utils/
│   └── app_styles.dart
│
└── data/
    └── profile_data.dart
```

## Code Organization

The project follows a component-based structure to improve code readability, reusability, and maintainability.

- **Screens:** Contains the main application screens.
- **Widgets:** Contains reusable UI components.
- **Utils:** Contains shared colors, styles, and design constants.
- **Data:** Contains the profile information and sample data.
- **Main:** Application entry point.

## Flutter Concepts Applied

- StatelessWidget
- Widget Composition
- Row and Column
- Container and Padding
- SizedBox and Expanded
- Stack and CircleAvatar
- ListView.builder
- Custom Reusable Widgets
- Constructors and Named Parameters
- MediaQuery and LayoutBuilder
- Responsive UI Design
- Code Organization and Separation of Concerns

## How to Run

1. Clone the repository.
2. Navigate to the project directory.
3. Install the dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## Project Goals

The main goal of this project is to gain practical experience with Flutter widgets, learn how to build user interfaces from a design reference, and develop good coding practices through reusable components and organized project architecture.

---

**Framework:** Flutter  
**Language:** Dart  
**Project Type:** UI Development Practice
