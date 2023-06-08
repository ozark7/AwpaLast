import 'package:flutter/material.dart';

class publicaciones extends StatefulWidget {
  const publicaciones({super.key});

  @override
  State<publicaciones> createState() => _publicacionesState();
}

class _publicacionesState extends State<publicaciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 201, 201),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                40.0), // Ajusta el valor de 10.0 según tus necesidades
            color: Colors.white, // Color de fondo del ListView
          ),
          margin: EdgeInsets.only(bottom: 10, top: 10),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            children: <Widget>[
              cardPublicaciones(context, "Publicacion1", "images/facultad.png"),
            ],
          ),
        ));
  }
}

Column cardPublicaciones(BuildContext context, String facultad, String imagen) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    SizedBox(
      width: double.infinity,
      height: 100,
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const publicaciones()));
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
    Divider(
      color: Colors.white,
    ),
  ]);
}
