import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CardInfo extends StatelessWidget {
  const CardInfo(
      {Key? key,
      required this.imageLink,
      required this.productname,
      required this.productdetails,
      required this.price})
      : super(key: key);
  final String imageLink;
  final String productname;
  final String productdetails;
  final String price;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 400,
        width: 200,
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 175,
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(imageLink),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              productname,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              productdetails,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price, style: const TextStyle(fontSize: 22)),
                Container(
                  // width: 30.0,
                  // height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
