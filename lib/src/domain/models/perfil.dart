class Perfil {
  var id;
  var username;
  var name;
  var image;
  var description;

  Perfil({this.id,this.username, this.name,this.image,this.description});
}

List<Perfil> PerfilList = [
  Perfil(
    id: 1,
    username: "ozarkpepi",
    name: "andres rueda",
    image: "https://yt3.ggpht.com/ytc/AGIKgqNwlyHU_pIdSEOTIu3HDF18u0W7FNXBRU7sJHrAxQ=s48-c-k-c0x00ffffff-no-rj",
    description: "1million",
  ),
    Perfil(
    id: 2,
    username: "benanito",
    name: "bruce wayne",
    image: "https://yt3.ggpht.com/ytc/AGIKgqOaOsUB1zGMXLJIq0GDtKWBwFbw9BdCZI3JZjWi=s48-c-k-c0x00ffffff-no-rj",
    description: "Area Dance Competition",
  ),
    Perfil(
    id: 3,
    username: "sayko",
    name: "andres mindiola",
    image: "https://yt3.ggpht.com/ytc/AGIKgqMp0IAd0ace3u642tDZTGMJiCjUyReWLAWlpnKR=s48-c-k-c0x00ffffff-no-rj",
    description: "GLAMM",
  ),
];