import 'package:flutter/material.dart';
import 'package:task2/widgets/app_bar.dart';
import 'package:task2/widgets/card_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      body: Column(children: [
        const MyAppBar(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // width: 350,
                  // height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hintText: "Cleanser",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(Icons.filter_list),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
              )
            ],
          ),
        ),
        const CardInfo()
      ]),
    );
  }
}
