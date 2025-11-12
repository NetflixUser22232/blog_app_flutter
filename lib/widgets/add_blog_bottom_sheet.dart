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
                    cursorColor: Color(0xFF90a955),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Title",
                      hintStyle: TextStyle(
                        color: Color(0xFF283618),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Color(0xFF90a955),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Subtitle",
                      hintStyle: TextStyle(
                        color: Color(0xFF283618),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Color(0xFF90a955),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Author name",
                      hintStyle: TextStyle(
                        color: Color(0xFF283618),
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
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
