import 'package:color_size_picker/src/app_colors.dart';
import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({
    super.key,
    this.colors = const ["Green", "Red", "Blue", "Yellow"],
    this.onChangeColor,
  });

  final List<String> colors;
  final void Function(String)? onChangeColor;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  late Color _selectedColor;
  final Map<String, Color> _colors = {};

  @override
  void initState() {
    for (String color in widget.colors) {
      _colors[color] = AppColors.colors[color] ?? Colors.black;
    }
    _selectedColor = widget.colors.isNotEmpty
        ? _colors[widget.colors.first] ?? AppColors.themeColor
        : AppColors.themeColor;
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
                ? AppColors.themeColor
                : _selectedColor == entry.value
                    ? Colors.black
                    : Colors.transparent,
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
                  ? AppColors.themeColor
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
}
