import 'package:application/widgets/home_carousel.dart';
import 'package:application/widgets/recommends.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.data});
  final List data;

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
          HomeCarousel(data: [1, 2, 4, 7, 7]),
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
