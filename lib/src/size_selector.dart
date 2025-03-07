import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({
    super.key,
    this.sizes = const [],
    this.onChangeSize,
    this.backgroundColor = Colors.indigo,
  });

  final List<String> sizes;
  final void Function(String)? onChangeSize;
  final Color? backgroundColor;

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  late String _selectedSize;

  @override
  void initState() {
    if (widget.sizes.isNotEmpty) {
      _selectedSize = widget.sizes.first;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: widget.sizes.map((size) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedSize = size;
              widget.onChangeSize?.call(size);
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _selectedSize == size ? widget.backgroundColor : null,
              shape: BoxShape.circle,
              border: Border.all(
                color: _selectedSize == size
                    ? widget.backgroundColor!
                    : Colors.black,
              ),
            ),
            width: 28,
            height: 28,
            child: Center(
              child: Text(
                size,
                style: TextStyle(
                  color: _selectedSize == size ? Colors.white : null,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
