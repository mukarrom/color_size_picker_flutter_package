# color_size_picker

A Flutter package for selecting colors and sizes in a user-friendly way.

![img.png](img.png)

## Features

- Allows users to pick colors from a predefined list.
- Supports custom color palettes.
- Provides a callback mechanism to handle color selection.
- Handles edge cases like empty color lists gracefully.

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  color_size_picker: ^0.0.1
```

Then, run flutter pub get to install the package.

## Usage
Import the package in your Dart file:

```dart
import 'package:color_size_picker/color_size_picker.dart';
```

Use the ColorPickerWidget in your app:

```dart
ColorPickerWidget(
  colors: ["Green", "Red", "Blue", "Yellow"],
  onChangeColor: (selectedColor) {
    print("Selected color: $selectedColor");
  },
)
```

Contributing
Contributions are welcome! Please open an issue or submit a pull request on GitHub.

License
This project is licensed under the MIT License. See the LICENSE file for details.