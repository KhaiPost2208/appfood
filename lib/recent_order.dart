import 'package:flutter/material.dart';
import 'package:namtrung_appfood/models/order.dart';
import 'data/data.dart';
class RecentOrder extends StatefulWidget {
  const RecentOrder({Key? key}) : super(key: key);

  @override
  State<RecentOrder> createState() => _RecentOrderState();
}

class _RecentOrderState extends State<RecentOrder> {
   _buildRecentOrder(BuildContext context, Order order) {
     return Container(
       margin: EdgeInsets.all(10),
       width: 300,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(15),
         border: Border.all(
           width: 1,
           color: Colors.black
         ),
       ),
       child: Row(
         children: [
           Expanded(child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                 child: Image(
                    width: 100,
                    height: 98,
                   image: AssetImage(order.food.image),
                   fit: BoxFit.cover,
                 ),
               )
             ],
           )
           ),
           Expanded(
               child: Container(
             margin: EdgeInsets.all(12),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(order.food.name,
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                     ),
                       overflow: TextOverflow.ellipsis,
                     ),
                     SizedBox(height: 4),
                     Text(
                       order.restaurant.name,
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                       ),
                       overflow: TextOverflow.ellipsis,
                     ),
                     SizedBox(height: 4),
                     Text(
                       order.date,
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                       ),
                       overflow: TextOverflow.ellipsis,
                     ),
                     SizedBox(height: 4),
                     Text(
                         order.quantity)
                   ],
                 ),
           ),
           ),
           Container(
             margin: EdgeInsets.only(right: 20),
             decoration: BoxDecoration(
               color: Colors.orange,
               borderRadius: BorderRadius.circular(50)
             ),
             child: IconButton(
               icon: Icon(Icons.add),
               onPressed: () {  },
             ),
           ),
         ],
       )

     );

   }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Xin mời gọi món",
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold),),
        ),
        Container(
          height: 120,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: curentUser.orders.length,
              itemBuilder: (BuildContext context, int index) {
                Order order = curentUser.orders[index];
                return _buildRecentOrder(context, order);
              }
              ),
        )
      ],
    );
  }
}
