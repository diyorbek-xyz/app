import 'package:application/widgets/home_carousel.dart';
import 'package:application/widgets/recommends.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final List data;
  final List carousel;
  const HomePage({super.key, required this.data, required this.carousel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeCarousel(data: widget.carousel),
          Column(
            children: widget.data.map((e) {
              return Recommends(title: e['title'], data: e['data']);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
