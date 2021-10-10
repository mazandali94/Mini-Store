import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const Text(
          "Search Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 50,
          height: 50,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(25),
          // ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/images/avatar.jpg",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ), // avatar
        ),
      ]),
    );
  }
}
