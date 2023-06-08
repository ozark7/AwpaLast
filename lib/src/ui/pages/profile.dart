import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

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
            /* decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/image.png'),
              fit: BoxFit.cover,
            )) */
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                UserProfile(
                  profileImage: "images/image.png",
                  size: 170,
                ),
                //SizedBox(height: 20),
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
              onPressed: () {},
              child: Text("Publicaciones"),
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontSize: 15)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white), // Cambia el color del texto del botón a rojo
              ),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(),
            child: const Center(
              child: Text(
                "MATERIAS",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 20,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView(
                      padding: EdgeInsets.only(left: 23, right: 500),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true, // Añade esta línea
                      children: List.generate(
                          10,
                          (index) => const UserProfile(
                                profileImage: "images/image.png",
                                size: 50,
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* Container(
            margin: EdgeInsetsDirectional.only(start: 200, end: 200, top: 50),
            child: const Center(
              child: Text(
                "DESCRIPCION",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ), */
          /* Container(
            padding: EdgeInsets.all(50),
            child: Text(
                "La Ingeniería es la disciplina y profesión que aplica los conocimientos técnicos y científicos y utiliza las leyes naturales y los recursos físicos, con el fin de diseñar e implementar materiales, estructuras, máquinas, dispositivos, sistemas y procesos para alcanzar un objetivo deseado, pero que cumpla con los ..."),
          ), */
          /* Container(
            margin:
                EdgeInsetsDirectional.symmetric(horizontal: 200, vertical: 10),
            child: TextButton(
              onPressed: () {},
              child: Text("CVLAC"),
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(2)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontSize: 20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white), // Cambia el color del texto del botón a rojo
              ),
            ),
          ) */

          /* Container(
            padding: const EdgeInsets.symmetric(),
            color: Colors.cyan,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[Text("Materia1")],
                ),
                Column(
                  children: <Widget>[Text("Materia2")],
                )
              ],
            ),
          ) */
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
