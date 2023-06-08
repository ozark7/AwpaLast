import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../domain/models/facultad.dart';
import '../../domain/models/publicacion.dart';
import '../../domain/models/widgets.dart';
import '../screens/menu.dart';

// ignore: must_be_immutable
class FacultadView extends StatelessWidget {
  const FacultadView({required this.facultad, required this.icon, super.key});
  final Facultad facultad;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    TextEditingController seachController = TextEditingController();
    List<dynamic> listCards = [
      CardPubs(PubList[0], Icons.ac_unit),
      CardPubs(PubList[1], Icons.ac_unit),
      CardPubs(PubList[2], Icons.ac_unit)
    ];

/*     return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        children: [
          Text(facultad.code),
        ],
      ),
    ); */
    return Scaffold(
        backgroundColor: const Color(0xFFE2E8ED),
        appBar: AppBarUtil.getCustomAppBar(context),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Center(
                    child: icon,
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Center(
                    child: Text(
                      facultad.name,
                      style: TextStyle(
                          color: Colors.black, fontSize: 50, letterSpacing: 8),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 30,
                      child: TextField(
                          controller: seachController,
                          decoration: InputDecoration(
                              filled: false,
                              labelText: "Buscar",
                              suffix: GestureDetector(
                                child: const Icon(Icons.search),
                                onTap: () {},
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            CupertinoIcons.slider_horizontal_3,
                            color: Colors.black,
                          )) /* Text("filtrar", style: TextStyle(fontSize: 15.0)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            fixedSize: MaterialStateProperty.all(Size(90,50)), /*minimumSize: MaterialStateProperty.all(Size(100, 50))*/
                          )) */
                      ,
                    )
                  ],
                ),
              ),
              Container(
                  //padding: const EdgeInsets.all(20.0),
                  height: 600,
                  width: 600,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 7),
                    itemBuilder: (context, index) =>
                        listaWidget(listCards)[index],
                    itemCount: listCards.length,
                    //children:listaWidget(listCards)//CardPubs(PubList[0], Icons.ac_unit)]
                  ))
            ],
          ),
        ));
  }

  List<Widget> listaWidget(List<dynamic> lista) {
    List<Widget> listWidget = [];
    lista.forEach((e) {
      listWidget.add(e);
    });
    return listWidget;
  }
}
