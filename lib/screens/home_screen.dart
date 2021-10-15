import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task2/widgets/app_bar.dart';
import 'package:task2/widgets/card_info.dart';

final List<Map> cardlist2 = [
  {
    "imagelink": "assets/images/image_1.jpg",
    "productname": "Product_1",
    "productdetails": "Details_1",
    "Price": "2000"
  },
  {
    "imagelink": "assets/images/image_2.jpg",
    "productname": "Product_2",
    "productdetails": "Details_2",
    "Price": "3000"
  },
  {
    "imagelink": "assets/images/image_3.png",
    "productname": "Product_3",
    "productdetails": "Details_3",
    "Price": "4000"
  },
  {
    "imagelink": "assets/images/image_4.jpg",
    "productname": "Product_4",
    "productdetails": "Details_4",
    "Price": "5000"
  },
  {
    "imagelink": "assets/images/image_5.jpg",
    "productname": "Product_5",
    "productdetails": "Details_5",
    "Price": "6000"
  }
];
List<Widget> staggeredList = [];
List<StaggeredTile> staggeredTile = [];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  List<Widget> buildStaggered(BuildContext context) {
    staggeredList.add(
      const Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          "Found 10 Results",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
    staggeredTile.add(const StaggeredTile.fit(2));
    for (var element in cardlist2) {
      staggeredTile.add(const StaggeredTile.fit(2));
      staggeredList.add(
        InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            "/productscreen",
            arguments: {"arg": element["imagelink"]},
          ),
          child: CardInfo(
            imageLink: element["imagelink"],
            productname: element["productname"],
            productdetails: element["productdetails"],
            price: element["Price"],
          ),
        ),
      );
    }
    return staggeredList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      body: Column(
        children: [
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
          Expanded(
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(15),
              children: buildStaggered(context),
              staggeredTiles: staggeredTile,
              // StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
