import 'package:awpa/src/ui/pages/app.dart';
import 'package:awpa/src/ui/pages/docentes.dart';
import 'package:awpa/src/ui/pages/facultades.dart';
import 'package:awpa/src/ui/pages/noticias.dart';
import 'package:awpa/src/ui/pages/publicaciones.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../pages/profile.dart';
import '../pages/home.dart';
import '../pages/app.dart';

String currentImage = "images/awpaICON.png";

int _currentIndex2 = 0;

final colors = [
  const Color.fromARGB(255, 19, 110, 140),
  const Color.fromARGB(255, 19, 110, 140),
  const Color.fromARGB(255, 19, 110, 140),
  const Color.fromARGB(255, 19, 110, 140),
  const Color.fromARGB(255, 19, 110, 140),
];

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final screens = [
    const home(),
    Facultades(),
    const docentes(),
    const publicaciones(),
    const News(),
    const MyAppForm()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUtil.getCustomAppBar(context),
      backgroundColor: const Color(0xFFE2E8ED),
      body: screens[_currentIndex2],
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex2],
          tabBackgroundColor: colors[_currentIndex2],
          selectedIndex: _currentIndex2,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) {
            setState(() => _currentIndex2 = index);
          },
          tabs: const [
            GButton(
              icon: Icons.house,
              text: "Home",
              textStyle: TextStyle(fontSize: 10),
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.menu_book_outlined,
              text: "Facultades",
              textStyle: TextStyle(fontSize: 10),
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: "Docentes",
              textStyle: TextStyle(fontSize: 10),
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.book_outlined,
              text: "Publicaciones",
              textStyle: TextStyle(fontSize: 10),
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.newspaper,
              text: "Noticias",
              textStyle: TextStyle(fontSize: 10),
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarUtil {
  static AppBar getCustomAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Profile(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 800),
                ),
              );
            },
          ),
        ),
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.logout_rounded,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          // Acción al presionar el botón de regreso
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MyAppForm()),
          );
        },
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(35),
          bottomLeft: Radius.circular(35),
        ),
      ),
      title: GestureDetector(
        onTap: () {
          // Lógica para manejar el clic en la imagen del AppBar
          // Por ejemplo, puedes navegar a la pantalla de inicio
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Menu()),
          );
        },
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.asset(
              currentImage,
              width: 80,
            ),
          ),
        ),
      ),
      backgroundColor: colors[_currentIndex2],
    );
  }
}
