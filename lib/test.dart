import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class data extends StatelessWidget {
  final List<Map<String, String>> img = [
    {"images": "assets/img (5).jpg", "offer": "5%", "price": "\$345.69"},
    {"images": "assets/img (4).jpg", "offer": "3%", "price": "\$135.89"},
    {"images": "assets/img (3).jpg", "offer": "6%", "price": "\$345.99"},
    {"images": "assets/img (5).jpg", "offer": "8%", "price": "\$195.49"},
    {"images": "assets/img (4).jpg", "offer": "2%", "price": "\$135.59"},
    {"images": "assets/img (3).jpg", "offer": "9%", "price": "\$135.99"},
  ];
  final img2 = [
    {
      "images": "assets/img (1).jpg",
    },
    {
      "images": "assets/img (2).jpg",
    },
    {
      "images": "assets/img (6).jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 170,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage('assets/img (6).jpg'),
                        fit: BoxFit.cover)),
              ),
              const Positioned(
                top: 140,
                left: 30,
                child: Text(
                  'JOYRIDE',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'Featured',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: img.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 140,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(img[index]['images']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 10,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(3),
                                            bottomRight: Radius.circular(3)),
                                        color: Colors.amber),
                                    child: Center(
                                        child: Text(
                                      img[index]['offer']!,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )),
                                  ),
                                ),
                                Positioned(
                                    top: 152,
                                    left: 40,
                                    child: Text(
                                      img[index]['price']!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'Discover',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                    items: img2
                        .map((e) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        e['images']!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2)),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
