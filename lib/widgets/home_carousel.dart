import 'package:application/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key, required this.data});
  final List data;
  @override
  State<StatefulWidget> createState() => _HomeCarousel();
}

class _HomeCarousel extends State<HomeCarousel> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return CarouselSlider(
      options: CarouselOptions(
        height: 330.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 10),
        viewportFraction: 1.0,
      ),
      items: widget.data.map((i) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/simple.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
                colors: [colors.tertiary, Colors.transparent],
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 12,
              children: [
                Text(
                  i.toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: colors.onTertiary,
                  ),
                ),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: colors.onTertiary),
                  "Yilnomalar bo'roni yosh ninja Naruto Uzumaki va uning do'stlarining sarguzashtlari haqidagi hikoyani davom ettiradi. Serial boshlanganiga uch yil bo‘ldi, qahramonlar ulg‘ayib, hayotiy tajriba orttirmoqda, mahoratini oshirmoqda. Naruto Yashirin Barg qishlog'iga qaytadi va ilgari u, Sasuke va Sakura islohotlaridan iborat jamoa. Undagi Sasuke o'rnini Sai ismli yosh nindzya egallaydi va ular birgalikda \"Kakashi jamoasi\" nomini olishadi. Ammo bulutsiz hayot uzoq davom etmaydi. Konoxada birinchi Xokage qoldirgan eski kelishmovchiliklar yana avj oldi. Akatsuki rahbari dunyo hukmronligini orzu qiladi va Qum qishlog'ida eski sirlar qayta paydo bo'ladi. Tez orada butun dunyo jiddiy sinovlar va og'ir zarbalarga duch keladi.",
                ),
                WidButton(icon: Icons.remove_red_eye_rounded, label: "Ko'rish",name: i,),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
