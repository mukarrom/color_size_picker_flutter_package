import 'package:flutter/material.dart';
import 'package:product_size_color_selector/product_size_color_selector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select Color"),
                ColorSelector(
                  colors: ["Red", "Blue", "Green", "Yellow"],
                  onChangeColor: (color) {
                    print(color);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Select Size"),
                SizeSelector(
                  sizes: ["S", "M", "L", "XL"],
                  onChangeSize: (size) {
                    print(size);
                  },
                ),
              ],
            )),
      ),
    );
  }
}
