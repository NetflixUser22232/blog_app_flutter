import 'package:blog_app_flutter/widgets/body_sizedbox.dart';
import 'package:flutter/material.dart';

class SecondaryPage extends StatelessWidget {
  const SecondaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "𝓡𝓮𝓪𝓭𝓲𝓷𝓰 𝓪𝓻𝓮𝓪",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 1, 138, 190),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            Container(
              margin: EdgeInsets.only(left: width * 0.1),
              width: width * 0.8,
              height: height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   image: AssetImage("assets/images/time.jpg"),
                // ),
              ),
              child: Image(image: AssetImage("assets/images/time.jpg")),
              //  Image.asset("assets/images/time.jpg", fit: BoxFit.fill),
            ),
            SizedBox(height: height * 0.05),
            BodySizedbox(),
          ],
        ),
      ),
    );
  }
}


/***
 * Padding(
              padding: EdgeInsets.only(right: width * 0.6),
              child: const Text(
                "Title",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: height * 0.007),
            Padding(
              padding: EdgeInsets.only(right: width * 0.55),
              child: const Text(
                "Subtitle",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.only(right: width * 0.47),
              child: const Text(
                "Author name",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
 * 
 */