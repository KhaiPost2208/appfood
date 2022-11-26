import 'screen_table.dart';
import 'package:flutter/material.dart';
import 'package:namtrung_appfood/models/restaurant.dart';
import 'package:namtrung_appfood/recent_order.dart';
import './data/data.dart';
import 'package:namtrung_appfood/screen_table.dart';
import 'screen_table.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _buildRestaurant() {
    List<Widget> retaurantList = [];
    restaurant.forEach((Restaurant restaurant) {
      retaurantList.add(
        GestureDetector(
        onTap: ()  =>   Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenTable(restaurant: restaurant)
        )
        ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1,
                color: Colors.black,
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: restaurant.image,
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(restaurant.image),
                      fit: BoxFit.cover,
                    ),
                  )
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(restaurant.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                          ),
                          SizedBox(height: 4),
                        ],
                      ),
                ))
              ],
            ),
          ),
        )
      );
    });

    return Column(children: retaurantList);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 40,
          onPressed: () {},
        ),
        title: Text("Đặt Món"),
        actions: [
          TextButton(onPressed: () {},
              child: Column(
                children: [
                  Image.asset('assets/cart.png', width: 35, height: 35, color: Colors.white,)
                ],
              ),
          ),
        ],
      ),
    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child:  TextField(
            decoration: InputDecoration(
              hintText: "Tìm Đồ Uống",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              prefixIcon: Icon(Icons.search,size:20),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {},
              )
            ),
          ),
        ),
        RecentOrder(),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Gọi món",
                style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Vui lòng chọn đúng số bàn",
                  style: TextStyle(fontSize: 15,
                      letterSpacing: 1.2),
                ),
              ),
              _buildRestaurant()
            ],
          ),
      ],
    ),
    );
  }
}
