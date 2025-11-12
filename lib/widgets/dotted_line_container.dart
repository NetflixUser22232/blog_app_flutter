import 'package:flutter/material.dart';

class DottedLineContainer extends StatelessWidget {
  const DottedLineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: BoxBorder.all(style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
