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
    "imagelink": "assets/images/image_3.jpg",
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: cardlist2.length,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.pushNamed(context, "/productscreen"),
                  child: CardInfo(
                    imageLink: cardlist2[index]["imagelink"],
                    productname: cardlist2[index]["productname"],
                    productdetails: cardlist2[index]["productdetails"],
                    price: cardlist2[index]["Price"],
                  ),
                );
              },
              staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
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
