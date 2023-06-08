import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool isExpanded = false;

  void toggleCardSize() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Hola\nBienvenido a AWPA',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Text(
                  "🛠-🛠-🛠-🛠",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: toggleCardSize,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInCubic,
                    width: isExpanded ? 200 : 200,
                    height: isExpanded ? 130 : 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Color.fromARGB(255, 74, 74, 74), width: 2),
                      ),
                      elevation: 10,
                      color: Color.fromARGB(255, 250, 249, 249),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'CREADORES:\n\nCristian B\nAndres R',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: toggleCardSize,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInCubic,
                    width: isExpanded ? 200 : 200,
                    height: isExpanded ? 150 : 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Color.fromARGB(255, 74, 74, 74), width: 2),
                      ),
                      elevation: 10,
                      color: Color.fromARGB(255, 250, 249, 249),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'INFORMACIÓN:\n\nEducación\nEntusiasmo\nCompromiso',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: toggleCardSize,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInCubic,
                    width: isExpanded ? 200 : 200,
                    height: isExpanded ? 150 : 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Color.fromARGB(255, 74, 74, 74), width: 2),
                      ),
                      elevation: 10,
                      color: Color.fromARGB(255, 250, 249, 249),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'DONACIONES:\n\n300 2323232\n300 2323232\n300 2323232',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Esperamos disfrutes de Nuestra App",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
