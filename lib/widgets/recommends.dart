import 'package:flutter/widgets.dart';
import 'package:application/widgets/card.dart';
import 'package:application/widgets/home_header.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Recommends extends StatefulWidget {
  const Recommends({super.key, required this.title, required this.data});
  final String title;
  final List data;

  @override
  State<Recommends> createState() => _RecommendsState();
}

class _RecommendsState extends State<Recommends> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeaderWidget(title: widget.title, link: "news"),
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 0.4,
            autoPlayCurve: Curves.decelerate,
            disableCenter: true,
            padEnds: false,
            enableInfiniteScroll: false,
          ),
          items: widget.data.map((i) {
            return CardWid();
          }).toList(),
        ),
      ],
    );
  }
}
