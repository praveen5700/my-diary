import 'package:flutter/material.dart';
import 'package:screen13/alert.dart';
import 'book.dart';
import 'fruits.dart';
import 'shooze.dart';
import 'account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom NavBar Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Book(),
    const Shooze(),
    const Fruits(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    var btncolor = const Color.fromARGB(255, 23, 40, 235);
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
      backgroundColor: const Color.fromARGB(255, 250, 248, 248),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const Alert(
              title: Text("Lunch coupon"),
              heading: "OOPS! You have got one coupon",
              subheading: "Thank you",
            ),
          );
        },
        backgroundColor: btncolor,
        child: const Icon(Icons.add),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xFFffffff),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 215, 212, 212),
            blurRadius: 10.0,
            spreadRadius: 5.0,
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.book,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.collections_sharp,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.black,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
