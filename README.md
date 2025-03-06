# product_size_color_selector

This is a Flutter package that provides a user-friendly way for users to select colors and sizes. It allows users to pick from a predefined list of colors and sizes, and provides a callback mechanism to handle the selection. The package also handles edge cases like empty color and size lists gracefully.

![img.png](img.png)

![img_1.png](img_1.png)

## Features

- Allows users to pick colors and sizes from a predefined list.
- Supports custom color and size palettes.
- Provides a callback mechanism to handle color and size selection.
- Handles edge cases like empty color and size lists gracefully.

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

Use the `ColorSelector` in your app:
```dart
ColorSelector(
  colors: ["Green", "Red", "Blue", "Yellow"],
  onChangeColor: (selectedColor) {
    print("Selected color: $selectedColor");
  },
)
```

Use the `SizeSelector` in your app:
```dart
SizeSelector(
  sizes: ["S", "M", "L", "XL"],
  onChangeSize: (size) {
    setState(() {
      print("Selected size: $size");
    });
  },
),
```

Contributing
Contributions are welcome! Please open an issue or submit a pull request on GitHub.

License
This project is licensed under the MIT License. See the LICENSE file for details.
