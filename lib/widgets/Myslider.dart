import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  const Banners({
    Key? key,
  }) : super(key: key);

  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> {
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
