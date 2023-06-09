import 'package:awpa/src/domain/models/noticia.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'images/teatro.jpg',
      'images/grado.jpg',
      'images/1.jpg',
      'images/web.jpg',
      'images/fer.jpg',
      'images/estudiante.jpg',
      'images/anners.jpg',
      'images/anners-.jpg'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item, // Usa Image.asset en lugar de Image.network
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                    // Resto del código...
                  ],
                ),
              ),
            ))
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFE2E8ED),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(bottom: 10, top: 10, left: 3, right: 3),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Actualidad",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF131516),
                        fontSize: 18,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: [
                  imageSliders[0],
                  imageSliders[1],
                  imageSliders[2],
                  imageSliders[3],
                  imageSliders[4],
                  imageSliders[5],
                  imageSliders[6],
                  imageSliders[7],
                ],
              ),
              SingleNoticeCard(
                imgListValue:
                    'images/exposoftware.jpg', // Ruta de la imagen local
                textValue: NoticiaList[0].description,
                urlValue: NoticiaList[0].url,
              ),
              SingleNoticeCard(
                imgListValue:
                    'images/encuestafinal.jpg', // Ruta de la imagen local
                textValue: NoticiaList[1].description,
                urlValue: NoticiaList[1].url,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<SingleNoticeCard> noticias() {
  List<SingleNoticeCard> lista = [];
  NoticiaList.forEach((element) {
    lista.add(SingleNoticeCard(
      imgListValue: element.image,
      textValue: element.description,
      urlValue: element.url,
    ));
  });
  return lista;
}

class SingleNoticeCard extends StatelessWidget {
  const SingleNoticeCard({
    Key? key,
    required this.imgListValue,
    required this.textValue,
    required this.urlValue,
  }) : super(key: key);

  final String imgListValue;
  final String textValue;
  final String urlValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              5.0), // Ajusta el valor de 10.0 según tus necesidades
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Reemplaza con tu enlace deseado
                launch(urlValue);
              },
              child: Image(
                width: 200,
                height: 200,
                fit: BoxFit.contain,
                image: AssetImage(imgListValue),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textValue,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF131516),
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                    const Text(''),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
