import 'package:blog_app_flutter/pages/secondary_page.dart';
import 'package:flutter/material.dart';

class MyBlogCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String authorName;

  const MyBlogCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Card(
      elevation: 7,
      color: Color(0xFFfefae0),
      //  Colors.white,
      margin: EdgeInsets.only(top: 30),
      child: Container(
        margin: EdgeInsets.only(left: 10, top: 15),
        width: width * 0.9,
        height: height * 0.22,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(height: height * 0.025),
            Text(subtitle),
            SizedBox(height: height * 0.025),
            Text(authorName),
            SizedBox(height: height * 0.053),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SecondaryPage()),
                );
              },
              child: Container(
                width: width * 0.14,
                height: height * 0.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF283618),
                  // boxShadow: [BoxShadow(blurRadius: 1)],
                  // Color(0xFF468faf),
                  // Color(0xFF014f86),
                  // Color(0xFF3d5a80),
                  // Color.fromARGB(255, 1, 138, 190),
                  // const Color.fromARGB(179, 72, 134, 185),
                ),
                child: Center(
                  child: const Text(
                    "Read more",
                    style: TextStyle(
                      color: Color(0xFFfefae0),
                      // Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
