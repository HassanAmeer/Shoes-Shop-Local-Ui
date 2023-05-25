import 'package:flutter/material.dart';
import 'package:ui/constant.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: wht,
      body: SingleChildScrollView(
        child: SizedBox(
          height: h1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 19),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 24,
                ),
                Stack(
                  children: [
                    Container(
                      height: h1 * 2 / 23,
                      width: w1 * 2 / 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage('assets/img (2).jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 40,
                      left: 50,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: color1,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: wht,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'John Richard',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 19),
                  ),
                ),
                Text(
                  'john2966@gmail.com',
                  style: text1,
                ),
                SizedBox(
                  height: h1 * 2 / 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: h1 * 2 / 29,
                    width: w1 * 2 / 2,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 218, 214, 214),
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.payment_rounded,
                            color: color1,
                          ),
                          SizedBox(
                            width: w1 * 2 / 30,
                          ),
                          Text(
                            'Payment Methods',
                            style: text,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: h1 * 2 / 29,
                    width: w1 * 2 / 2,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 218, 214, 214),
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            color: color1,
                          ),
                          SizedBox(
                            width: w1 * 2 / 30,
                          ),
                          Text(
                            'Notification',
                            style: text,
                          ),
                          SizedBox(
                            width: w1 * 2 / 6,
                          ),
                          Switch(
                              activeColor: color1,
                              value: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value;
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: h1 * 2 / 29,
                    width: w1 * 2 / 2,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 218, 214, 214),
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: color1,
                          ),
                          SizedBox(
                            width: w1 * 2 / 30,
                          ),
                          Text(
                            'Change Password',
                            style: text,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: h1 * 2 / 29,
                    width: w1 * 2 / 2,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 218, 214, 214),
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout_rounded,
                            color: color1,
                          ),
                          SizedBox(
                            width: w1 * 2 / 30,
                          ),
                          Text(
                            'Logout',
                            style: text,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
