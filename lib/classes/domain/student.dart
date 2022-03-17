class Student {
  String? nombre;
  String? padres;
  String? telefono;
  String? faltas;
  String? clase;

  Student({this.nombre, this.padres, this.telefono, this.faltas, this.clase});

  Student.fromJson(Map<String, dynamic> json) {
    nombre = json['nombre'];
    padres = json['padres'];
    telefono = json['telefono'];
    faltas = json['faltas'];
    clase = json['clase'];
  }

}