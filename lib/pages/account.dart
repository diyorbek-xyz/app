import 'package:application/widgets/plan_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AccountPage());
}

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});
  @override
  State<StatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/settings"),
            padding: EdgeInsets.all(17),
            icon: Icon(Icons.settings_rounded, size: 35),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: colors.primary, width: 2),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/image.jpeg'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Diyorbek Samijonov",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            alignment: Alignment.center,
            child: Text(
              "Tariflar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.5,
            children: [
              PlanCard(title: "1-OY"),
              PlanCard(title: "3-OY"),
              PlanCard(title: "6-OY"),
              PlanCard(title: "1-YIL"),
            ],
          ),
        ],
      ),
    );
  }
}
