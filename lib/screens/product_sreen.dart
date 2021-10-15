import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    var link = arg["arg"];
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      body: Column(
        children: [
          Stack(
            children: [
              Center(child: Image.asset(link)),
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
                  children: [
                    Indecator(),
                    Indecator(),
                    Indecator(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Indecator extends StatelessWidget {
  const Indecator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
