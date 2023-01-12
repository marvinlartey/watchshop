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
                    Slideshow(),
                    Slideshow(),
                    Slideshow(),
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
                      return ListTile(
                        title: Text('item $index'),
                      );
                    }),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/w1.webp',
              fit: BoxFit.fill,
            ),
            Positioned(
              left: 20,
              bottom: 30,
              width: 100,
              height: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "EKHOLM",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "99",
                    style: TextStyle(
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
