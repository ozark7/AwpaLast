import 'package:awpa/src/domain/models/publicacion.dart';
import 'package:flutter/material.dart';

import '../../ui/pages/profile.dart';
import '../../ui/theme/theme.dart';

class Texts extends StatelessWidget {
  const Texts(
      {Key? key,
      required this.controlText,
      required this.name,
      required this.icon})
      : super(key: key);

  final TextEditingController controlText;
  final String name;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: controlText,
        decoration: InputDecoration(
          filled: false,
          labelText: name,
          suffix: GestureDetector(
            child: icon,
            onTap: () {
              controlText.clear();
            },
          ),
        ),
      ),
    );
  }
}

Row CardPubs(Publicacion pub, IconData iconValue) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        width: 500,
        height: 100,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFFF9FBFC)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Color(0xFFE8E6E3)),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: CircleAvatar(
                    radius: 35,
                    backgroundColor: AppTheme.accentColor,
                    child: ImageIcon(
                      AssetImage("images/docente.png"),
                      size: 48.0,
                      color: Colors.blue,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        pub.title,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          //fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Text(
                      pub.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(171, 5, 6, 5),
                        //fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )
  ]);
}

class CarDocentes extends StatelessWidget {
  const CarDocentes({
    required this.docente,
    required this.image,
    super.key,
  });
  final String docente;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: SizedBox(
          width: 500,
          height: 100,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profile(image: image, name: docente)),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFF9FBFC)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Color(0xFFE8E6E3)),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: CircleAvatar(
                      radius: 35,
                      backgroundColor: AppTheme.accentColor,
                      child: ImageIcon(
                        AssetImage("images/guess_user.png"),
                        size: 48.0,
                        color: Color.fromARGB(255, 239, 241, 243),
                        
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          docente,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            //fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
