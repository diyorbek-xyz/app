import 'package:application/widgets/card.dart';
import 'package:application/widgets/home_header.dart';
import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key, required this.data});
  final List data;

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.data[1]);
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeaderWidget(title: "Hamma Animelar", link: "news"),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.7,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: widget.data.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CardWid(name: widget.data[index]),
          ),
        ],
      ),
    );
  }
}
