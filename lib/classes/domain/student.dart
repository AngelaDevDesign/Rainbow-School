class Student {
  String? nombre;
  String? padres;
  num? telefono;
  int? faltas;

  Student({this.nombre, this.padres, this.telefono, this.faltas});

  Student.fromJson(Map<String, dynamic> json) {
    nombre = json['nombre'];
    padres = json['padres'];
    telefono = json['telefono'];
    faltas = json['faltas'];
  }

}