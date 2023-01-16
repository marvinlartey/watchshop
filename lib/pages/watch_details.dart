import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WatchDetails extends StatelessWidget {
  const WatchDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: MediaQuery.of(context).size.height * 0.6,
                autoPlay: true,
                enableInfiniteScroll: false,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        // margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          'assets/images/w$i.jpg', fit: BoxFit.fill,
                          // style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 38.0, horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "HISAKO",
                    style: TextStyle(fontSize: 25, letterSpacing: 8),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "\$249",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Text(
                    "Named after asteroid 6 0 9 4(h i s a k o) is currently travelling throught time and space in",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 126, 126, 126)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        // BUY BUTTON
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary:
                                    const Color.fromARGB(255, 213, 165, 135),
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.7,
                                    60)),
                            onPressed: () {},
                            child: const Text("BUY NOW"),
                          ),
                        ),
                        // ADD  TO WISHLIST BUTTON
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.51,
                                      color:
                                          Color.fromARGB(111, 180, 180, 180))),
                              elevation: 0,
                              primary: const Color.fromARGB(255, 255, 255, 255),
                              minimumSize: const Size(50, 60)),
                          onPressed: () {},
                          child: const Icon(
                            Icons.favorite_border_rounded,
                            size: 33,
                            color: Color.fromARGB(200, 36, 36, 36),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
