import '../models/facultad.dart';

class GetFacultadData {
  static final List<Facultad> _facultadesList = [
    Facultad(
      name: 'Ingenierías y Tecnológicas',
      materias: '7',
      code: 'SSS01',
    ),
    Facultad(
      name: 'Derecho',
      materias: '2',
      code: 'SSS02',
    ),
    Facultad(
      name: 'Ciencias de la Salud',
      materias: '9',
      code: 'SSS03',
    ),
    Facultad(
      name: 'Ciencias administrativas',
      materias: '4',
      code: 'SSS04',
    ),
    Facultad(
      name: 'Bellas Artes',
      materias: '1',
      code: 'SSS05',
    ),
    Facultad(
      name: 'Ciencias basicas',
      materias: '7',
      code: 'SSS06',
    ),
  ];
  final String foto;
  GetFacultadData.fromJson(Map<String, dynamic> json):foto 
  = json['foto'];
  static List<Facultad> get facultadesList => _facultadesList;
}
