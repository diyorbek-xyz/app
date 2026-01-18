import 'package:flutter/material.dart';

class WidgetNavigationRail extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onDestinationSelected;
  final bool? extended;
  const WidgetNavigationRail({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.extended,
  });

  @override
  State<StatefulWidget> createState() => _WidgetNavigationRail();
}

class _WidgetNavigationRail extends State<WidgetNavigationRail> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return NavigationRail(
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: widget.onDestinationSelected,
      indicatorColor: colors.primary,
      backgroundColor: colors.primary.withValues(alpha: 0.1),
      useIndicator: true,
      labelType: (widget.extended != null && widget.extended == true)
          ? NavigationRailLabelType.none
          : NavigationRailLabelType.all,
      extended: widget.extended ?? false,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home_rounded),
          label: Text("Home"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.grid_view_rounded),
          label: Text("Animes"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.search_rounded),
          label: Text("Search"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bookmark_rounded),
          label: Text("Saved"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.account_circle_rounded),
          label: Text("Profile"),
        ),
      ],
    );
  }
}
