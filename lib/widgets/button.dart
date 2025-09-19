import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        ),
        surfaceTintColor: WidgetStatePropertyAll(Colors.black),
        overlayColor: WidgetStatePropertyAll(
          Color.lerp(Colors.white, colors.primary, .8),
        ),
        backgroundColor: WidgetStatePropertyAll(colors.primary),
        foregroundColor: WidgetStatePropertyAll(colors.onPrimary),
      ),
      onPressed: () => Navigator.pushNamed(
        context,
        "/anime",
        arguments: {"name": "Diyorbek"},
      ),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
