import 'package:blog_app_flutter/widgets/form_field_bottom_sheet.dart';
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
              color:
                  //  Color(0xFFecf39e),
                  Color(0xFF90a955),
            ),
            child: Container(
              margin: EdgeInsets.all(7),
              width: width * 0.7,
              height: height,
              decoration: BoxDecoration(
                color: Color(0xFFecf39e),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Column(
                  children: [
                    FormFieldBottomSheet(
                      hintText: "Title",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: height * 0.01),
                    FormFieldBottomSheet(
                      hintText: "Subtitle",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: height * 0.01),
                    FormFieldBottomSheet(
                      hintText: "Author name",
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ],
                ),
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
