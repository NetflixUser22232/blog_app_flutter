import 'package:blog_app_flutter/widgets/my_blog_card.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    int currentIndex = 0;
    return Scaffold(
      backgroundColor: Color(0xFF90a955),
      // Color(0xFFdda15e),
      //  Color(0xFF98c1d9),
      appBar: AppBar(
        title: const Text(
          "𝔅𝔩𝔬𝔤𝔰 𝔄𝔭𝔭",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFecf39e),
            //  Color(0xFFfefae0),
            //  const Color.fromARGB(195, 255, 255, 255),
          ),
        ),
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Color(0xFFecf39e)),
            onPressed: () async {
              // First show the dialog
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Information'),
                  content: Text('This is an important information dialog.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );

              // Then show snackbar after dialog is closed
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Dialog closed'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
        // Padding(
        //       padding: EdgeInsets.only(right: width * 0.025),
        //       child: Icon(Icons.menu, color: Color(0xFFfefae0)),
        //     ),
        backgroundColor: Color(0xFF283618),
        // Color(0xFF15616d),
        // Color(0xFF3d5a80),
        // Color.fromARGB(255, 1, 138, 190),
      ),
      body: Column(
        children: [
          // SizedBox(height: height * 0.03),
          Container(
            width: width,
            height: height * 0.1,
            decoration: BoxDecoration(
              color: Color(0xFF606c38),
              // Color.fromARGB(228, 75, 134, 143),
              // const Color.fromARGB(255, 5, 46, 80),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width * 0.035),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: width * 0.77,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 233, 237, 183),
                    //  Color(0xFFfefae0),
                    // Colors.white,
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
                          style: TextStyle(color: Color(0xFFfefae0)),
                        ),
                        backgroundColor: Color(0xFF606c38),
                      ),
                    );
                  },

                  child: Container(
                    width: width * 0.12,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF283618),
                      //  Color(0xFF014f86),
                      //  const Color.fromARGB(71, 255, 255, 255),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.send,
                        size: 30,
                        color: Color(0xFFecf39e),
                        //  Color(0xFFfefae0),
                        //  const Color.fromARGB(195, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width,
            height: height * 0.67,
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
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(
            color: Color(0xFFecf39e),
            // Colors.white,
          ),
        ),
        selectedIndex: currentIndex,
        indicatorColor: Color(0xFF606c38),
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home, color: Color(0xFFfefae0), size: 30),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.search, color: Color(0xFFfefae0), size: 30),
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(Icons.book, color: Color(0xFFfefae0), size: 30),
            label: "Favourite",
          ),
          NavigationDestination(
            icon: Icon(Icons.person, color: Color(0xFFfefae0), size: 30),
            label: "Profile",
          ),
        ],
        backgroundColor: Color(0xFF283618),

        // Color(0xFF15616d),
        //  Color(0xFF468faf),
        //  Color.fromARGB(255, 1, 138, 190),
        elevation: 3,
        // labelTextStyle: TextStyle(color: Colors.black),
        // onDestinationSelected: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
        animationDuration: const Duration(milliseconds: 500),
      ),
    );
  }
}
