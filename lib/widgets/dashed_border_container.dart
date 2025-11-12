import 'package:flutter/material.dart';

class DottedLineContainer extends StatelessWidget {
  const DottedLineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Card(
        elevation: 5,
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            border: BoxBorder.all(
              color: Colors.black,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            color: Colors.amber,
          ),
          child: Container(
            decoration: BoxDecoration(
              // color:
            ),
            child: Center(child: const Text("Add a blog")),
          ),
        ),
      ),
    );
  }
}
