import 'package:flutter/material.dart';

class WidgetNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onDestinationSelected;
  const WidgetNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      indicatorColor: colors.primary,
      surfaceTintColor: colors.primary,
      backgroundColor: colors.primary.withValues(alpha: 0.1),
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(color: colors.secondary),
      ),
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: "Home"),
        NavigationDestination(
          icon: Icon(Icons.grid_view_rounded),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.search_rounded),
          label: "Search",
        ),
        NavigationDestination(
          icon: Icon(Icons.bookmark_rounded),
          label: "Saved",
        ),
        NavigationDestination(
          icon: Icon(Icons.account_circle_rounded),
          label: "Profile",
        ),
      ],
    );
  }
}
