import 'package:flutter/material.dart';
import 'package:namtrung_appfood/data/data.dart';
import 'models/order.dart';
class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  _buildCard (Order order ) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 170,
      child: Row(
        children: [
          Expanded(
              child: Row(
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(order.food.image),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),
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
                              fontSize: 20
                            ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10),
                            Text(order.restaurant.name,
                              style: TextStyle(
                                  fontSize: 20
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black,
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text("-",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(order.quantity.toString(),
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                                  ),
                                  SizedBox(width: 15,),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("${order.quantity * order.food.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                  )
                ],
          )
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    curentUser.cart.forEach(
            (Order order) => totalPrice += order.quantity * order.food.price
    );
    return Scaffold(
        appBar: AppBar(
            title: Text("Đã Đặt (${curentUser.cart.length})")
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              if (index < curentUser.cart.length) {
                Order order = curentUser.cart[index];
                return _buildCard(order);
              }
              return Padding(
                  padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Tổng tiền",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("${totalPrice.toStringAsFixed(3)}",
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
    return const Divider(
    height: 1,
    color: Colors.grey,
    );
    },
        itemCount: curentUser.cart.length + 1
    ),

      // bottomSheet: Container(
      //   height: 60,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     color: Colors.brown,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.brown,
      //         offset: Offset(0, 1),
      //         blurRadius: 6.0,
      //       )
      //     ]
      //   ),
      //   child: Center(
      //     child: TextButton(
      //       onPressed: () {},
      //       child: Text("Xác Nhận",
      //       style: TextStyle(
      //           color: Colors.white,
      //         fontSize: 22,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 2,
      //       ),
      //       ),
      //   ),
      // ),
      // ),
    );
  }

  }

