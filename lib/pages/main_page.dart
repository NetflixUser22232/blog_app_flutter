import 'package:blog_app_flutter/widgets/my_blog_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 202, 219),
      appBar: AppBar(
        title: const Text(
          "𝔅𝔩𝔬𝔤𝔰 𝔄𝔭𝔭",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,

        actions: [
          InkWell(
            onTap: () {
              // AlertDialog(
              //   title: const Text("Do you want to delete this?"),
              //   actions: [const Text("Yes"), const Text("No")],
              // );

              // ScaffoldMessenger.of(
              //   context,
              // ).showSnackBar(SnackBar(content: const Text("Are you sure?")));
            },
            child: Icon(Icons.menu, color: Colors.black),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 1, 138, 190),
      ),
      body: Column(
        children: [
          // SizedBox(height: height * 0.03),
          Container(
            width: width,
            height: height * 0.25,
            decoration: BoxDecoration(
              color: Color.fromARGB(228, 75, 134, 143),
              // const Color.fromARGB(255, 5, 46, 80),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width * 0.2),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: width * 0.6,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write your blog here...",
                    ),
                  ),
                ),
                SizedBox(width: width * 0.03),
                // Button to send a blog you entered
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          "You have successfully added a blog!",
                        ),
                      ),
                    );
                  },

                  child: Container(
                    width: width * 0.06,
                    height: height * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(71, 255, 255, 255),
                    ),
                    child: Center(child: Icon(Icons.send)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width,
            height: height * 0.6,
            child: SingleChildScrollView(
              // scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Blog Card
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),

                  // Testing data
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title: "How to master your time",
                    subtitle:
                        "The secret to time management is simple: Jedi time tricks.",
                    authorName: "Oliver Emberton",
                  ),
                  MyBlogCard(
                    title:
                        "The problem isn’t that life is unfair – it’s your broken idea of fairness",
                    subtitle:
                        "Unless you’re winning, most of life will seem hideously unfair to you.",
                    authorName: "Oliver Emberton",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // Bottom navigation bar
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home, color: Colors.black, size: 30),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.search, color: Colors.black, size: 30),
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(Icons.book, color: Colors.black, size: 30),
            label: "Favourite",
          ),
          NavigationDestination(
            icon: Icon(Icons.person, color: Colors.black, size: 30),
            label: "Profile",
          ),
        ],
        backgroundColor: Color.fromARGB(255, 1, 138, 190),
        elevation: 3,
      ),
    );
  }
}
