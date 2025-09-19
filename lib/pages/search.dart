import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const SearchPage());
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: BoxBorder.all(color: Colors.black38, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          margin: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(100)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
              child: SearchBar(
                leading: Icon(
                  Icons.search_rounded,
                  color: colors.tertiary,
                  size: 30,
                ),
                hintText: "Qidirish",
                elevation: WidgetStatePropertyAll(0),
                scrollPadding: EdgeInsets.all(1),
                backgroundColor: WidgetStatePropertyAll(
                  Color.lerp(Colors.transparent, colors.tertiary, .3),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                textStyle: WidgetStatePropertyAll(
                  TextStyle(color: colors.tertiary, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
