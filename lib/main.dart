// ignore_for_file: unnecessary_new

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/constant.dart';
import 'Login_Screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: const splashscreen());
  }
}

// class ImageData {
//   final String imagePath;
//   final String title;

//   ImageData({required this.imagePath, required this.title});
// }

// List<ImageData> imageDataList = [
//   ImageData(
//     imagePath: "assets/dk.jpg",
//     title: "Image 1",
//   ),
//   ImageData(
//     imagePath: "assets/images/cloud.png",
//     title: "Image 2",
//   ),
//   // Add more images as needed
// ];

// class my extends StatefulWidget {
//   const my({super.key});

//   @override
//   State<my> createState() => _myState();
// }

// class _myState extends State<my> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       child: ListView.builder(
//         itemCount: imageDataList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ImageDetailsPage(
//                     imageData: imageDataList[index],
//                   ),
//                 ),
//               );
//             },
//             child: Image.asset(imageDataList[index].imagePath),
//           );
//         },
//       ),
//     );
//   }
// }

// class ImageDetailsPage extends StatelessWidget {
//   final ImageData imageData;

//   const ImageDetailsPage({Key? key, required this.imageData}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(imageData.title),
//       ),
//       body: Center(
//         child: Image.asset(imageData.imagePath),
//       ),
//     );
//   }
// }

// class Image360 extends StatefulWidget {
//   @override
//   _Image360State createState() => _Image360State();
// }

// class _Image360State extends State<Image360> {
//   double _rotation = 0;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanUpdate: (details) {
//         setState(() {
//           _rotation += details.delta.dx / 100;
//         });
//       },
//       child: Transform(
//         transform: Matrix4.identity()..rotateY(math.pi * _rotation),
//         alignment: FractionalOffset.center,
//         filterQuality: FilterQuality.low,
//         child: Image.asset('assets/rt.png'),
//       ),
//     );
//   }
// }

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const Login_Screen()));
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: ((context) => Login_Screen())));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: color1,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.mirror,
                stops: [0.55, 0.9],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(1),
                  const Color.fromARGB(255, 252, 152, 53).withOpacity(1)
                ])),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/rt.png',
              width: 800,
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'LIVE YOUR ',
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'PERFECT',
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Smart, gorgeous & fashionable',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 209, 197, 197),
              ),
            ),
            const Text(
              'collection makes you cool',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 209, 197, 197),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const CircularProgressIndicator(
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Get Started',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Login_Screen extends StatelessWidget {
//   const Login_Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 90,
//             ),
//             Center(child: Image.asset('assets/chatgpt.png')),
//             Form(
//                 child: Column(children: [
//               Container(
//                 height: 420,
//                 width: 300,
//                 decoration: BoxDecoration(),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 40,
//                     ), '),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     input_field(),
//                   ],
//                 ),
//               )
//             ]))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class input_field extends StatelessWidget {
//   final hint;

//   const input_field({
//     super.key,
//     this.hint = 'Email',
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//           label: Text(hint),
//           hintText: 'Enter Email',
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//           enabledBorder:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(17))),
//     );
//   }
// }
