import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imageCard = [
  "assets/images/imageCard_1.png",
  "assets/images/imageCard_2.png",
  "assets/images/imageCard_3.png"
];

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    var link = arg["arg"];

    return Scaffold(
      backgroundColor: const Color(0xffe9e7ea),
      body: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 0),
              child: Image.asset(link),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 30,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.widgets_outlined,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 700),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Indecator(indicatorColor: Colors.grey),
                  Indecator(indicatorColor: Colors.black),
                  Indecator(indicatorColor: Colors.grey),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 750),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < 3; i++)
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: ImageCard(imageLink: imageCard[i]))
                ],
              ),
            ),
            // const Footer()
          ],
        ),
        const Footer()
      ]),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10,
      left: 0,
      right: 0,
      child: Container(
        height: 160,
        padding: const EdgeInsets.only(top: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Facial Cleaner",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(children: [
                  for (var i = 0; i < 5; i++) const Icon(Icons.star)
                ])
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Information about product",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "(150 Reviews)",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.imageLink,
  }) : super(key: key);
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageLink,
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Natural", style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }
}

class Indecator extends StatelessWidget {
  const Indecator({
    Key? key,
    required this.indicatorColor,
  }) : super(key: key);
  final Color indicatorColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
        color: indicatorColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
