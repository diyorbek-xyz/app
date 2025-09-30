import 'package:flutter/material.dart';

class WidButton extends StatelessWidget {
  const WidButton({
    super.key,
    required this.icon,
    required this.label,
    this.name,
  });
  final IconData icon;
  final String label;
  final String? name;

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
        arguments: {"name": name ?? "Diyorbek"},
      ),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
