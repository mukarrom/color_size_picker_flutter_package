import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({
    super.key,
    this.colors = const ["Green", "Red", "Blue", "Yellow"],
    this.onChangeColor,
    this.borderAndIconColor = Colors.indigo,
  });

  final List<String> colors;
  final Color borderAndIconColor;
  final void Function(String)? onChangeColor;

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  late Color _selectedColor;
  final Map<String, Color> _colors = {};

  @override
  void initState() {
    for (String color in widget.colors) {
      _colors[color] = _colorsMap[color] ?? Colors.black;
    }
    _selectedColor = _colors[widget.colors.first] ?? Colors.indigo;
    super.initState();
  }

  Widget _buildColorCircle(MapEntry<String, Color> entry) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = entry.value;
        });
        widget.onChangeColor?.call(entry.key);
      },
      child: Container(
        decoration: BoxDecoration(
          color: entry.value,
          shape: BoxShape.circle,
          border: Border.all(
            color: entry.value == Colors.white
                ? widget.borderAndIconColor
                : Colors.transparent,
            // : _selectedColor == entry.value
            //     ? Colors.black
            //     : Colors.transparent,
            width: _selectedColor == entry.value ? 2.0 : 0.0,
          ),
        ),
        width: 28,
        height: 28,
        child: Icon(
          Icons.check,
          color: _selectedColor != entry.value
              ? Colors.transparent
              : entry.value == Colors.white
                  ? widget.borderAndIconColor
                  : Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: _colors.entries.map(_buildColorCircle).toList(),
    );
  }

  final Map<String, Color> _colorsMap = {
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Yellow": Colors.yellow,
    "Orange": Colors.orange,
    "Gold": Colors.amber,
    "Purple": Colors.purple,
    "Pink": Colors.pink,
    "Brown": Colors.brown,
    "Grey": Colors.grey,
    "Black": Colors.black,
    "White": Colors.white,
    "Cyan": Colors.cyan,
    "Teal": Colors.teal,
    "Indigo": Colors.indigo,
    "Lime": Colors.lime,
    "Amber": Colors.amber,
    "DeepOrange": Colors.deepOrange,
    "DeepPurple": Colors.deepPurple,
    "LightBlue": Colors.lightBlue,
    "LightGreen": Colors.lightGreen,
    "LightGreenAccent": Colors.lightGreenAccent,
    "LightBlueAccent": Colors.lightBlueAccent,
  };
}
