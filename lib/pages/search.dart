import 'package:application/widgets/button.dart';
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
        Row(
          children: [
            TextButton.icon(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.tertiary),
                foregroundColor: WidgetStatePropertyAll(colors.onTertiary),
                overlayColor: WidgetStatePropertyAll(colors.tertiary)
              ),
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
              label: Text("Search"),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded))
          ],
        ),
      ],
    );
  }
}
