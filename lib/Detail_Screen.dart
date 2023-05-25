import 'package:flutter/material.dart';
import 'package:ui/constant.dart';

import 'package:ui/home_scree.dart';
import 'package:ui/products_model.dart';
import 'package:readmore/readmore.dart';

import 'dart:math' as math;

import 'package:ui/profile_screen.dart';

class ImageDetailsPage extends StatefulWidget {
  final Product imageData;

  const ImageDetailsPage({Key? key, required this.imageData}) : super(key: key);

  @override
  State<ImageDetailsPage> createState() => _ImageDetailsPageState();
}

class _ImageDetailsPageState extends State<ImageDetailsPage> {
  double _rotation = 0;
  String? indx;
  int value = 0;
  int value1 = 0;
  int value2 = 0;
  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: wht,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Men's Shoes",
            style: text2,
          ),
        ),
        elevation: 1000,
        backgroundColor: wht,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const home_screen())));
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: blk,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: blk,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 9.0,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Stack(children: [
                GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      _rotation += details.delta.dx / 300;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..rotateY(math.pi * _rotation),
                      alignment: FractionalOffset.center,
                      filterQuality: FilterQuality.low,
                      child: Image.asset(
                        indx == null ? widget.imageData.image : indx.toString(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 80,
                    top: 67,
                    child: Opacity(
                        opacity: 0.1, child: Image.asset('assets/i.png')))
              ]),
            ),
            Container(
              height: h1 * 2 / 3,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 251, 250, 250),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: widget.imageData.title, style: text4),
                            TextSpan(text: widget.imageData.brand, style: text4)
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: color1,
                        ),
                        Text(
                          '5.0',
                          style: text,
                        ),
                        Text(' (1120 Review)',
                            style: TextStyle(color: grecolor)),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      preDataTextStyle: TextStyle(color: Colors.blueGrey),
                      postDataTextStyle: TextStyle(color: Colors.red),
                      // lessStyle: TextStyle(color: Colors.amber),
                      // style: TextStyle(color: Colors.amber),
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(color: Colors.amber),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Select Color:',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h1 * 2 / 90,
                  ),
                  SizedBox(
                    height: h1 * 2 / 26,
                    child: ListView.builder(
                        itemCount: selection.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((BuildContext context, int index) =>
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  indx = selection[index]["images"];
                                  value = index;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 218, 214, 214),
                                            offset: Offset(1, 3),
                                            blurRadius: 3,
                                            spreadRadius: 2)
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage(
                                            selection[index]["images"],
                                          ),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          width: 2,
                                          color: value == index
                                              ? color1
                                              : Colors.white),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  height: h1 * 2 / 10,
                                  width: w1 * 2 / 10,
                                ),
                              ),
                            ))),
                  ),
                  SizedBox(
                    height: h1 * 2 / 44,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Size :',
                          style: text,
                        ),
                        Row(
                          children: List.generate(
                              selection.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        value1 = index;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Text(selection[index]['name'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: value1 == index
                                                  ? Colors.black
                                                  : const Color.fromARGB(
                                                      255, 187, 184, 184))),
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h1 * 2 / 60,
                  ),
                  Row(
                    children: List.generate(
                        products.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  value2 = index;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 218, 214, 214),
                                            offset: Offset(2, 3),
                                            blurRadius: 2,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                      color: value2 == index
                                          ? color1
                                          : Colors.white),
                                  child: Center(
                                    child: Text("${products[index].size}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            color: value2 == index
                                                ? Colors.black
                                                : const Color.fromARGB(
                                                    255, 187, 184, 184))),
                                  ),
                                ),
                              ),
                            )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: h1 * 2 / 16,
                    width: w1 * 2 / 2,
                    decoration: BoxDecoration(
                        color: blk, borderRadius: BorderRadius.circular(19)),
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(
                                    color: grecolor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.imageData.price,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          Profile_Screen())));
                            },
                            child: Container(
                              height: 200,
                              width: w1 * 2 / 4,
                              decoration: BoxDecoration(
                                  color: color1,
                                  borderRadius: BorderRadius.circular(24)),
                              child: const Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
