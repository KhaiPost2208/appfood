import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namtrung_appfood/myhomepage.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đặt hàng"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/anh1.png'),
            Container(
              padding: EdgeInsets.all(7),
              child: Text("Nam Trung Coffee", style: GoogleFonts.allura(fontSize: 40),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Text(
                      "   Đừng mong tình yêu thời nay tựa như ly cà phê sữa. Có đắng cay mới có ngọt ngào, sau cơn mưa trời mới sáng...",
                      style: GoogleFonts.allura(
                          fontSize: 30
                      )),
                  ZoomTapAnimation(
                    onTap: next,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(16),
                      child: const Text("Đặt Món Ngay",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  void next() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}





