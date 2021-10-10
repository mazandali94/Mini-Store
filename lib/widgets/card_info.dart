import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
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
                child: Image.asset("assets/images/image_1.jpg"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text("Product Name"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text("Product Details"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("200"),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.linked_camera,
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
