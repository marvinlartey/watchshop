import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.menu_rounded,
                      size: 30,
                    ),
                    Spacer(),
                    Text("Watches", style: TextStyle(fontSize: 20)),
                    Spacer(),
                    Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Slideshow(
                      image: "w1.webp",
                      price: '249',
                      title: 'EKHOLM',
                    ),
                    Slideshow(
                      image: "w2.jpg",
                      price: '220',
                      title: 'CELSO',
                    ),
                    Slideshow(
                      image: "w3.jpg",
                      price: '200',
                      title: 'HISAKO',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: const [
                    Text(
                      "Discover",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.horizontal_rule)
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: ListView.separated(
                    itemBuilder: ((context, index) {
                      return Card(
                        elevation: 0,
                        color: Color.fromARGB(255, 245, 244, 244),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Image.asset(
                              "assets/images/uu$index.jpg",
                              height: 100,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: const [
                                Text(
                                  'ORMOUS',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'White, size L',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color:
                                          Color.fromARGB(255, 126, 125, 125)),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "\$249",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ]),
                        ),
                      );

                      /*  ListTile(
                        leading: SizedBox(
                            height: 100,
                            child: Image.asset("assets/images/uu$index.jpg")),
                        title: Text('item $index'),
                      ); */
                    }),
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                          height: 20,
                        ),
                    itemCount: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Slideshow extends StatelessWidget {
  const Slideshow({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    // String? image,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/$image',
              fit: BoxFit.fill,
            ),
            Positioned(
              left: 20,
              bottom: 30,
              width: 100,
              height: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
