import 'package:flutter/material.dart';

class CardWid extends StatefulWidget {
  final String? name;
  const CardWid({super.key, this.name});
  @override
  State<CardWid> createState() => _CardWidState();
}

class _CardWidState extends State<CardWid> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 1.2),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        child: InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            "/anime",
            arguments: {"name": widget.name ?? "naruto"},
          ),
          splashColor: Colors.white12,
          child: Ink.image(
            image: AssetImage("assets/images/image.png"),
            fit: BoxFit.cover,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.lerp(
                        colors.tertiary,
                        Colors.transparent,
                        1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text("2-700", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(5),
                  color: Color.lerp(colors.tertiary, Colors.transparent, 0.5),
                  child: Text(
                    widget.name ?? "naruto",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
