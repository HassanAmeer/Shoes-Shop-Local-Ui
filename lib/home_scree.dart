import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'glitchtext.dart';
import 'model.dart';
import 'test2.dart';
import 'test.dart';
import 'profile_screen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  final pages = [test2(), data(), const Profile_Screen()];
  var cindex = 0;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: GlithEffect(
            child: Transform.translate(
              offset: Offset(12, 0),
              child: Transform.scale(
                scale: 0.7,
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                  width: 166,
                ),
              ),
            ),
          ),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.segment_rounded,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 183, 176, 150),
        unselectedItemColor: Colors.transparent,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: cindex == 0
                        ? const Color.fromARGB(255, 184, 243, 251)
                        : Colors.transparent),
                width: 60,
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 16, right: 16, bottom: 10),
                    child: Image.asset('assets/icon_shoes.png')),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: cindex == 1
                          ? const Color.fromARGB(255, 184, 243, 251)
                          : Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 16, right: 16, bottom: 10),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: cindex == 1 ? Colors.blue : Colors.black,
                    ),
                  )),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: cindex == 2
                          ? const Color.fromARGB(255, 184, 243, 251)
                          : Colors.transparent),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 16, right: 16, bottom: 10),
                      child: Icon(
                        Icons.person_4_outlined,
                        color: cindex == 2 ? Colors.blue : Colors.black,
                      ))),
              label: ''),
        ],
        onTap: (value) {
          setState(() {
            cindex = value;
          });
        },
      ),
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: pages[cindex],
    );
  }
}
