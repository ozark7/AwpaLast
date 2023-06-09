class Noticia {
  var url;
  var image;
  var description;

  Noticia({this.url, this.image, this.description});
}

List<Noticia> NoticiaList = [
  Noticia(
    url:
        "http://sistemas.unicesar.edu.co/index.php/component/sppagebuilder/163-exposoftware-2023",
    image:
        "https://yt3.ggpht.com/ytc/AGIKgqNwlyHU_pIdSEOTIu3HDF18u0W7FNXBRU7sJHrAxQ=s48-c-k-c0x00ffffff-no-rj",
    description: "<--- Click Here",
  ),
  Noticia(
    url: "https://saeupc.unicesar.edu.co/index.php?sid=66845&lang=es-MX",
    image:
        "https://yt3.ggpht.com/ytc/AGIKgqOaOsUB1zGMXLJIq0GDtKWBwFbw9BdCZI3JZjWi=s48-c-k-c0x00ffffff-no-rj",
    description: "<--- Click Here",
  ),
  Noticia(
    url: "https://www.youtube.com/watch?v=ihvcD-k8r9A",
    image:
        "https://yt3.ggpht.com/ytc/AGIKgqMp0IAd0ace3u642tDZTGMJiCjUyReWLAWlpnKR=s48-c-k-c0x00ffffff-no-rj",
    description: "GLAMM",
  ),
];
