class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona({required this.nombre, required this.apellido, this.edad = 0});

  factory Persona.fromEdad(int edad) {
    return Persona(nombre: '', apellido: '')..edad = edad;
  }

  @override
  String toString() {
    return '$nombre $apellido, Edad: $edad';
  }
}
