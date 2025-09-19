import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatefulWidget {
  const HomeHeaderWidget({super.key, required this.title, required this.link});

  final String title;
  final String link;

  @override
  State<HomeHeaderWidget> createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title, style: TextStyle(fontSize: 25)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_right_rounded, size: 40),
          ),
        ],
      ),
    );
  }
}
