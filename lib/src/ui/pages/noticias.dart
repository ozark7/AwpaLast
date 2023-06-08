import 'package:awpa/src/domain/models/noticia.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
      "https://images.unsplash.com/photo-1572949645841-094f3a9c4c94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bm90aWNpYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
      "https://plus.unsplash.com/premium_photo-1661775045365-7240b4aaf48e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bm90aWNpYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                    InkWell(
                        onTap: () {
                          // Reemplaza con tu enlace deseado
                          launch("https://www.youtube.com/watch?v=E6zyrc8F-dA");
                        },
                        hoverColor: Color.fromARGB(85, 76, 72, 188),
                        child: Image(
                          width: 1000,
                          fit: BoxFit.cover,
                          image: NetworkImage(item),
                        )),
                    /* Ink.image(image:AssetImage(item), fit: BoxFit.cover,width: 1000.0,child: GestureDetector(onTap: (){
                      launch("https://www.youtube.com/watch?v=E6zyrc8F-dA");
                    },)), */
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                items: [
                  imageSliders[0],
                  imageSliders[1],
                  imageSliders[2],
                ],
              ),
              SingleNoticeCard(
                imgListValue: NoticiaList[0].image,
                textValue: NoticiaList[0].description,
                urlValue: NoticiaList[0].url,
              ),
              SingleNoticeCard(
                imgListValue: NoticiaList[1].image,
                textValue: NoticiaList[1].description,
                urlValue: NoticiaList[1].url,
              ),
              SingleNoticeCard(
                imgListValue: NoticiaList[2].image,
                textValue: NoticiaList[2].description,
                urlValue: NoticiaList[2].url,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<SingleNoticeCard> noticias() {
  List<SingleNoticeCard> lista = List.empty();
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
    super.key,
    required this.imgListValue,
    required this.textValue,
    required this.urlValue,
  });

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
            InkWell(
                onTap: () {
                  // Reemplaza con tu enlace deseado
                  launch(urlValue);
                },
                hoverColor: Color.fromARGB(85, 76, 72, 188),
                child: Image(
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                  image: NetworkImage(imgListValue),
                )),
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
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF131516),
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                      overflow: TextOverflow.clip,
                      maxLines:
                          10, // Número máximo de líneas permitidas para evitar overflow
                    ),
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
