import 'package:awpa/src/domain/data/get_facultad_data.dart';
import 'package:awpa/src/domain/models/facultad.dart';
import 'package:awpa/src/ui/pages/single_facultad.dart';
import 'package:flutter/material.dart';
import '../theme/theme.dart';

// ignore: must_be_immutable
class Facultades extends StatelessWidget {
  Facultades({super.key});

  // Hacer llamado a la api y llenar facultadesList
  List<Facultad> facultadesList =
      GetFacultadData.facultadesList.cast<Facultad>();

  @override
  Widget build(BuildContext context) {
    final Scaffold? parentWidget =
        context.findAncestorWidgetOfExactType<Scaffold>();
    return Scaffold(
        backgroundColor: const Color(0xFFE2E8ED),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                40.0), // Ajusta el valor de 10.0 según tus necesidades
            color: Colors.white, // Color de fondo del ListView
          ),
          margin: const EdgeInsets.only(bottom: 10, top: 10, left: 3, right: 3),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
              children: <Widget>[
                cardFacultades(context, facultadesList[0],
                    Icons.computer_outlined, parentWidget),
                cardFacultades(context, facultadesList[1],
                    Icons.account_balance_outlined, parentWidget),
                cardFacultades(context, facultadesList[2],
                    Icons.health_and_safety_outlined, parentWidget),
                cardFacultades(context, facultadesList[3],
                    Icons.bar_chart_outlined, parentWidget),
                cardFacultades(context, facultadesList[4],
                    Icons.theater_comedy_outlined, parentWidget),
                cardFacultades(context, facultadesList[5], Icons.book_outlined,
                    parentWidget),
              ],
            ),
          ),
        ));
  }

  Column cardFacultades(BuildContext context, Facultad facultadValue,
      IconData iconValue, var parentDataWidget) {
    Icon icon = Icon(
      iconValue,
      size: 23,
      color: Colors.white,
    );

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        width: double.infinity,
        height: 100,
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => FacultadView(
                          facultad: Facultad(
                            code: "2",
                            materias: "aro",
                            name: "Ingeniería",
                          ),
                          icon: icon,
                        )));
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: AppTheme.accentColor,
                  child: icon,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                facultadValue.name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
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
