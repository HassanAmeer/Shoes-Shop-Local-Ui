import 'MY_Cart.dart';
import 'products_model.dart';
import 'package:flutter/material.dart';
import 'package:ui/Detail_Screen.dart';
import 'package:ui/constant.dart';

class test2 extends StatefulWidget {
  test2({super.key});

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> with TickerProviderStateMixin {
  final bgwhite = Colors.white;

  final bgblack = Colors.black;

  final selctedindex = 0;

  int tabindex = 0;

  late TabController _tabController;

  final pages = [
    const tab1(),
    const tab2(),
    const tab3(),
    const tab4(),
    const tab5(),
    const tab6(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 240,
                  height: 47,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_sharp),
                        fillColor: Colors.grey[300],
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(22))),
                  ),
                ),
                Stack(children: [
                  Positioned(
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    ((context, animation, secondaryAnimation) =>
                                        const My_Cart()),
                                transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) =>
                                    FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ),
                              ));
                        },
                        icon: const Icon(Icons.shopping_cart_rounded)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, top: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                  )
                ])
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Sneakers',
                  style: Textsty1,
                ),
              ],
            ),
            SizedBox(
                height: 50,
                child: DefaultTabController(
                  length: 6,
                  child: TabBar(
                      physics: const BouncingScrollPhysics(),
                      automaticIndicatorColorAdjustment: false,
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.white,
                      controller: _tabController,
                      unselectedLabelColor: Colors.black,
                      onTap: (value) {
                        setState(() {
                          ind = value;
                        });
                      },
                      labelPadding: const EdgeInsets.symmetric(horizontal: 1),
                      tabs: [
                        Container(
                          height: 33,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ind == 0 ? color1 : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 4.0, right: 4, top: 0, bottom: 0),
                            child: Tab(
                              text: 'All',
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ind == 1 ? color1 : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 4.0, right: 4, top: 0, bottom: 0),
                            child: Tab(
                              text: 'Nike',
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ind == 2 ? color1 : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 4.0, right: 4, top: 0, bottom: 0),
                            child: Tab(
                              text: 'Addidas',
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ind == 3 ? color1 : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 4.0, right: 4, top: 0, bottom: 0),
                            child: Tab(
                              text: 'Puma',
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ind == 4 ? color1 : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 4.0, right: 4, top: 0, bottom: 0),
                            child: Tab(
                              text: 'Hummel',
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ind == 5 ? color1 : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 4.0, right: 4, top: 0, bottom: 0),
                            child: Tab(
                              text: 'Rebok',
                            ),
                          ),
                        ),
                      ]),
                )),
            SizedBox(
              height: 800,
              child: TabBarView(controller: _tabController, children: pages),
            )
          ]),
        ),
      ),
    );
  }
}

class tab1 extends StatefulWidget {
  const tab1({
    super.key,
  });

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 210,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: ((context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ImageDetailsPage(
                                    imageData: products[index]))));
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 9),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2))
                            ],
                            color: const Color.fromARGB(255, 255, 253, 253),
                            borderRadius: BorderRadius.circular(12)),
                        height: 40,
                        width: 130,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              right: -50,
                              child: Image.asset(products[index].image),
                              width: 230,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    products[index].title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Icon(Icons.favorite_border_outlined)
                                ],
                              ),
                            ),
                            Positioned(
                                left: 5,
                                top: 24,
                                child: Text(
                                  products[index].brand,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                left: 5,
                                top: 40,
                                child: Text(
                                  products[index].price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ))),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [
            Text(
              'Sales',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: img.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 140,
                    width: 105,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(1, 2))
                      ],
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          img[index]['images']!,
                        ),
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
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(3),
                                    bottomRight: Radius.circular(3)),
                                color: color1),
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                );
              })),
        )
      ],
    );
  }
}

class tab2 extends StatelessWidget {
  const tab2({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        SizedBox(
          height: 900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9.0),
            child: GridView.builder(
                itemCount: sneakers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 190,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                      width: 300,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 217, 214, 214),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(1, 2)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            sneakers[index]['im']!,
                            width: 300,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(sneakers[index]['brand']!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    sneakers[index]['price']!,
                                    style: text1,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: color1,
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class tab3 extends StatelessWidget {
  const tab3({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        SizedBox(
          height: 900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9.0),
            child: GridView.builder(
                itemCount: sneakers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                      width: 300,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 217, 214, 214),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(1, 2)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Transform.translate(
                            offset: const Offset(15, -20),
                            child: Transform.scale(
                              scale: 2,
                              child: Image.asset(
                                sneakers[index]['im']!,
                                width: 300,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(sneakers[index]['brand']!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    sneakers[index]['price']!,
                                    style: text1,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: color1,
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class tab4 extends StatelessWidget {
  const tab4({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        SizedBox(
          height: 900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9.0),
            child: GridView.builder(
                itemCount: sneakers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 190,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                      width: 300,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 217, 214, 214),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(1, 2)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Transform.translate(
                            offset: const Offset(15, -20),
                            child: Transform.scale(
                              scale: 2,
                              child: Image.asset(
                                sneakers[index]['im']!,
                                width: 300,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(sneakers[index]['brand']!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    sneakers[index]['price']!,
                                    style: text1,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: color1,
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class tab5 extends StatelessWidget {
  const tab5({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        SizedBox(
          height: 900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9.0),
            child: GridView.builder(
                itemCount: sneakers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 190,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                      width: 300,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 217, 214, 214),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(1, 2)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            sneakers[index]['im']!,
                            width: 300,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(sneakers[index]['brand']!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    sneakers[index]['price']!,
                                    style: text1,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: color1,
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class tab6 extends StatelessWidget {
  const tab6({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        SizedBox(
          height: 900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9.0),
            child: GridView.builder(
                itemCount: sneakers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 190,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                      width: 300,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 217, 214, 214),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(1, 2)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            sneakers[index]['im']!,
                            width: 300,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(sneakers[index]['brand']!,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    sneakers[index]['price']!,
                                    style: text1,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: color1,
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
