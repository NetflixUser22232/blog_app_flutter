import 'package:flutter/material.dart';

class AddBlogBottomSheet extends StatelessWidget {
  const AddBlogBottomSheet({super.key});

  @override
  static Future<Scaffold> show(BuildContext context) async {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return Container(
            width: width,
            height: height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Color(0xFFecf39e),
              //  Color(0xFF90a955),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Title",
                      hintStyle: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Subtitle",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Author name",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
