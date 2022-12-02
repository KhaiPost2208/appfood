import 'package:flutter/material.dart';
import 'package:namtrung_appfood/confirm_page.dart';
import 'package:namtrung_appfood/models/food.dart';
import 'package:namtrung_appfood/models/restaurant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namtrung_appfood/confirm_page.dart';
import './data/data.dart';
import './models/food.dart';
class ScreenTable extends StatefulWidget {
  final Restaurant restaurant;
  const ScreenTable({Key? key, required this.restaurant}) : super(key: key);

  @override
  State<ScreenTable> createState() => _ScreenTableState();
}

class _ScreenTableState extends State<ScreenTable> {

  _buildMenu(Food menuItem){
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuItem.image),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black87.withOpacity(0.3),
                  Colors.black54.withOpacity(0.3),
                  Colors.black38.withOpacity(0.3),
                ]
              )
            ),

          ),
          Positioned(
            bottom: 65,
              child: Column(
                children: [
                  Text(menuItem.name,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25, color: Colors.white),),
                  SizedBox(height: 5),
                  Text((menuItem.price).toStringAsFixed(3),
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20, color: Colors.white),),
                ],
              ),
          ),
          Positioned(
            bottom: 10,
              right: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.add),
                  iconSize: 20,
                  onPressed: () {},
                ),
              )
          )
        ],
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(tag: widget.restaurant.image,
                  child: Image(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(widget.restaurant.image),
                    fit: BoxFit.cover,
                  )
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 35,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(icon: Icon(Icons.favorite),
                      color: Colors.red,
                      iconSize: 35,
                      onPressed: (){},
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.restaurant.address,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 22),
                    ),
                    Text(widget.restaurant.name,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 22),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(" Bạn là người giúp chúng tôi thành công như ngày hôm nay. Cảm ơn bạn - một khách hàng thân thiết của chúng tôi...",
                    style: GoogleFonts.allura(fontSize: 25),),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text("Menu",
                    style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                ),
                SizedBox(height: 5),
                   Container(
                     height: 460,
                     child: GridView.count(
                       crossAxisCount: 2,
                       children: List.generate(widget.restaurant.menu.length, (index) {
                         Food food = widget.restaurant.menu[index];
                         return _buildMenu(food);
                         },
                       ),
                     ),
                   ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
