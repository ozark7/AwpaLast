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
                    GestureDetector(
                      onTap: () {
                        if (item == 'images/teatro.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAACUL3.jpg',
                          );
                        } else if (item == 'images/grado.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAr-grado.jpg',
                          );
                        } else if (item == 'images/1.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAA1.jpg',
                          );
                        } else if (item == 'images/web.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3anner%20tipo%20de%20pregunta%20aula%20web.jpg',
                          );
                        } else if (item == 'images/fer.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAanneenfer.jpg',
                          );
                        } else if (item == 'images/estudiante.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAanner-celebraciondiadelestudoiante.jpg',
                          );
                        } else if (item == 'images/anners.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAannerseimiario.jpg',
                          );
                        } else if (item == 'images/anners-.jpg') {
                          launch(
                            'https://www.unicesar.edu.co/images/2022/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAanners-.jpg',
                          );
                        }
                      },
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                      ),
                    ),
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
                items: imageSliders,
              ),
              SingleNoticeCard(
                imgListValue: 'images/exposoftware.jpg',
                textValue: NoticiaList[0].description,
                urlValue: NoticiaList[0].url,
              ),
              SingleNoticeCard(
                imgListValue: 'images/encuestafinal.jpg',
                textValue: NoticiaList[1].description,
                urlValue: NoticiaList[1].url,
              ),
              // Agrega más SingleNoticeCard según sea necesario
            ],
          ),
        ),
      ),
    );
  }
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
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
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
