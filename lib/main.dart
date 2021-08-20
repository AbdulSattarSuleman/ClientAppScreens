import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
                  Icons.zoom_in,
                  color: Color(0xff262161),
                )),
          ],
        ),
        body: Column(
          children: [
            // Banners()

            SizedBox(
                height: 150.0,
                width: 300.0,
                child: Carousel(
                  images: [
                    // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                    // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                    // ExactAssetImage("assets/images/LaunchImage.jpg")
                    AssetImage('assets/images/banner-1.jpg')
                  ],
                  // https://codingwithdhrumil.com/2020/05/exploring-flutter-carousel-slider.html
                )),
          ],
        ),
      ),
    );
  }
}

class Banners extends StatelessWidget {
  const Banners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner-1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner-2.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner-3.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner-4.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banner-5.png'),
                    fit: BoxFit.cover)),
          ),
        ],
        options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 80),
            viewportFraction: 1));
  }
}
