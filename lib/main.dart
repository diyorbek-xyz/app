import 'package:application/pages/account.dart';
import 'package:application/pages/all.dart';
import 'package:application/pages/anime.dart';
import 'package:application/pages/search.dart';
import 'package:application/pages/home.dart';
import 'package:application/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.amber,
          onPrimary: Colors.white,
          secondary: Color(0xFF000000),
          onSecondary: Colors.white,
          error: Color(0xFFB00020),
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => Main(),
        "/anime": (context) => Anime(),
        "/settings": (context) => SettingsPage(),
      },
      initialRoute: "/",
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<Widget> pages = [
    HomePage(
      data: [
        {
          'title': "Yangi animelar",
          'data': [1, 2, 3, 4],
        },
        {
          'title': "Mashxur animelar",
          'data': [1, 2, 3, 4],
        },
      ],
    ),
    AllPage(data: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]),
    SearchPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawerScrimColor: colors.error,
          backgroundColor: Colors.amber[50],
          body: TabBarView(children: pages),
          bottomNavigationBar: TabBar(
            tabAlignment: TabAlignment.fill,
            dividerHeight: 0,
            labelColor: colors.onPrimary,
            indicator: BoxDecoration(color: colors.primary),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(icon: Icon(Icons.home_rounded), text: "Home"),
              Tab(icon: Icon(Icons.grid_view_rounded), text: "Settings"),
              Tab(icon: Icon(Icons.search_rounded), text: "Search"),
              Tab(icon: Icon(Icons.account_circle_rounded), text: "Account"),
            ],
          ),
        ),
      ),
    );
  }
}
