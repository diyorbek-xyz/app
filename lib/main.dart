import 'package:application/pages/account.dart';
import 'package:application/pages/all.dart';
import 'package:application/pages/anime.dart';
import 'package:application/pages/search.dart';
import 'package:application/pages/home.dart';
import 'package:application/pages/settings.dart';
import 'package:application/styles/theme.dart';
import 'package:application/widgets/navigation_rail.dart';
import 'package:application/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.env["TEST_API_URL"] ?? "undefined",
    anonKey: dotenv.env["TEST_API_KEY"] ?? "undefined",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: theme, useMaterial3: true),
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
  int _selectedIndex = 0;
  bool _expanded = false;
  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _expand() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  final List<String> _headers = [
    "Asosiy sahifa",
    "Barcha animelar",
    "Animelarni qidirish",
    "Saqlangan animelar",
    "Profil",
  ];
  final List<Widget> pages = [
    HomePage(
      carousel: ['Naruto', "Boruto", "Saruto"],
      data: [
        {
          'title': "Yangi animelar",
          'data': ["Naruto", "Boruto", "Saruto", "Anime", "Anime"],
        },
        {
          'title': "Mashxur animelar",
          'data': ["Naruto", "Boruto", "Saruto"],
        },
      ],
    ),
    AllPage(data: ["Naruto", "Boruto", "Saruto"]),
    SearchPage(),
    SearchPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawerScrimColor: colors.error,
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          actions: [
            IconButton(onPressed: _expand, icon: Icon(Icons.settings_rounded)),
          ],
          leading: IconButton(
            onPressed: _expand,
            icon: Icon(Icons.menu_rounded),
          ),
          toolbarHeight: 80,
          title: Text(_headers[_selectedIndex]),
        ),
        body: Row(
          children: [
            if (width > 500)
              WidgetNavigationRail(
                extended: _expanded,
                selectedIndex: _selectedIndex,
                onDestinationSelected: _onDestinationSelected,
              ),
            Expanded(
              child: IndexedStack(index: _selectedIndex, children: pages),
            ),
          ],
        ),
        bottomNavigationBar: width < 500
            ? WidgetNavigationBar(
                selectedIndex: _selectedIndex,
                onDestinationSelected: _onDestinationSelected,
              )
            : null,
      ),
    );
  }
}
