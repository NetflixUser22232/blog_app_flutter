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
                width: width * 0.12,
                height: height * 0.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 1, 138, 190),
                  // const Color.fromARGB(179, 72, 134, 185),
                ),
                child: Center(child: const Text("Read more")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
