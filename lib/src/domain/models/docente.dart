import 'package:awpa/src/domain/models/Facultad.dart';

class Docente {
  var id;
  var name;
  var last_name;
  var facultad;
  /*
  var email;
  var password;
  */
  Docente({this.id, this.name, this.last_name, this.facultad});
}

List<Docente> docentesList = [
  Docente(
    id: '1',
    name: 'El',
    last_name: 'Pepi',
    facultad: Facultad(code: '010', materias: 2, name: 'Ciencias Basicas'),
  ),
  Docente(
    id: '2',
    name: 'Cristian',
    last_name: 'Benavides',
    facultad:
        Facultad(code: '011', materias: 5, name: 'Ciencias Administrativas'),
  ),
  Docente(
    id: '3',
    name: 'Ssaylem',
    last_name: 'Murillo',
    facultad: Facultad(code: '012', materias: 8, name: 'Bellas Artes'),
  ),
];
