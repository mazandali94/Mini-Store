import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

final List<String> cardlist = [
  "assets/images/image_1.jpg",
  "assets/images/image_2.jpg",
  "assets/images/image_3.jpg",
  "assets/images/image_4.jpg",
  "assets/images/image_5.jpg"
];
final List<Map> cardlist2 = [
  {
    "imgelink": "assets/images/image_1.jpg",
    "productname": "Product_1",
    "productdetails": "Details_1",
    "Price": "2000"
  },
  {
    "imgelink": "assets/images/image_2.jpg",
    "productname": "Product_2",
    "productdetails": "Details_2",
    "Price": "3000"
  },
  {
    "imgelink": "assets/images/image_3.jpg",
    "productname": "Product_3",
    "productdetails": "Details_3",
    "Price": "4000"
  },
  {
    "imgelink": "assets/images/image_4.jpg",
    "productname": "Product_4",
    "productdetails": "Details_4",
    "Price": "5000"
  },
  {
    "imgelink": "assets/images/image_5.jpg",
    "productname": "Product_5",
    "productdetails": "Details_5",
    "Price": "6000"
  }
];

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
      borderRadius: BorderRadius.circular(40),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "productname",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              "productdetails",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Price", style: TextStyle(fontSize: 22)),
                Container(
                  // width: 30.0,
                  // height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.leak_remove,
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
