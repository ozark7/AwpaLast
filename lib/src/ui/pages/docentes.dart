import 'package:awpa/src/domain/models/widgets.dart';
import 'package:awpa/src/ui/pages/profile.dart';
import 'package:awpa/src/ui/screens/menu.dart';
import 'package:flutter/material.dart';

class docentes extends StatefulWidget {
  const docentes({super.key});

  @override
  State<docentes> createState() => _docentesState();
}

class _docentesState extends State<docentes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E8ED),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                40.0), // Ajusta el valor de 10.0 según tus necesidades
            color: Colors.white, // Color de fondo del ListView
          ),
          margin: const EdgeInsets.only(bottom: 10, top: 10, left: 3, right: 3),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            children: <Widget>[
              CarDocentes(docente: "Wendy Santana", image: "images/guess_user.png"),
              CarDocentes(docente: "Braulio Barrios", image: "images/guess_user.png"),
              CarDocentes(docente: "Estefany Mendes", image: "images/guess_user.png"),
              CarDocentes(docente: "Maribel Castañez", image: "images/guess_user.png")
            ],
          ),
        ));
  }

  Column cardDocentes(BuildContext context, String facultad, String imagen) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        width: double.infinity,
        height: 100,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile(image: "Aro",name: "El pepi")));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Color(0xFF9899A5), width: 0.2),
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
              Center(child: Text(facultad)),
            ],
          ),
        ),
      ),
      const Divider(
        color: Colors.white,
      ),
    ]);
  }
  
}
