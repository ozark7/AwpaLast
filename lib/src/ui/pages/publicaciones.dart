import 'package:flutter/material.dart';

class publicaciones extends StatefulWidget {
  const publicaciones({Key? key});

  @override
  State<publicaciones> createState() => _publicacionesState();
}

class _publicacionesState extends State<publicaciones> {
  bool isExpanded = false;

  void toggleMenu() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E8ED),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(bottom: 10, top: 10, left: 3, right: 3),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          children: <Widget>[
            cardPublicaciones(context, "Publicacion1", "images/facultad.png"),
          ],
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: toggleMenu,
        child: Icon(isExpanded ? Icons.close : Icons.add_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // Renderiza los botones adicionales
      persistentFooterButtons: isExpanded
          ? [
              /* ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page1()),
                  );
                },
                child: Icon(Icons.arrow_forward_outlined),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page2()),
                  );
                },
                child: Icon(Icons.pages),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page3()),
                  );
                },
                child: Icon(Icons.bookmark),
              ), */
            ]
          : null, */
    );
  }
}

Column cardPublicaciones(BuildContext context, String facultad, String imagen) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: double.infinity,
        height: 100,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const publicaciones()),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.red),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(imagen),
                radius: 35,
              ),
              const SizedBox(width: 90.0),
              Text(facultad),
            ],
          ),
        ),
      ),
      const Divider(
        color: Colors.white,
      ),
    ],
  );
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: const Text('This is Page 1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: const Text('This is Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: const Text('This is Page 3'),
      ),
    );
  }
}
