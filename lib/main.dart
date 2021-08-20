import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practice_screens/widgets/Myslider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.5,
          leading: Image.asset('assets/images/logo.png'),
          title: Text(
            "YiWU BAZAAR",
            style: TextStyle(
              color: Color(0xff262161),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color(0xff262161),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff262161),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Color(0xff262161),
                )),
          ],
        ),
        body: Column(
          children: [Banners()],
        ),
      ),
    );
  }
}
