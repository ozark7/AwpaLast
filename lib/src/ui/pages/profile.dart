import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/publicaciones.dart';

class Profile extends StatefulWidget {
  const Profile({required this.image, required this.name,super.key});
  final String image;
  final String name;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Acción al presionar el botón de regreso
            Navigator.pop(
                context); // Reemplazar la página actual con la nueva página
          },
        ),
        title: const Text(
          "PERFIL",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        backgroundColor: Color.fromARGB(255, 236, 242, 244),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            height: 270,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                UserProfile(
                  profileImage: "images/personProfile.jpg",
                  size: 170,
                ),

                Text(
                  "@${"pepito"}",
                  style: TextStyle(color: Color.fromARGB(255, 47, 46, 46)),
                ),
                Text(
                  "Andres Felipe",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsetsDirectional.symmetric(horizontal: 150, vertical: 10),
            child: TextButton(
              onPressed: () async {
                const url = 'https://minciencias.gov.co/content/cvlac';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text("--> CVLAC <--"),
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontSize: 15)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Nuestro docente de la UPC es altamente capacitado y está comprometido con la excelencia académica. Con una sólida formación en su área de especialización, posee un profundo conocimiento de los fundamentos teóricos y prácticos de la disciplina que imparte. Su experiencia y habilidades pedagógicas le permiten transmitir de manera clara y efectiva los conceptos más complejos a sus estudiantes.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  final String profileImage;
  final double size;

  const UserProfile({
    super.key,
    required this.profileImage,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(profileImage),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.only(bottom: 5),
    );
  }
}
