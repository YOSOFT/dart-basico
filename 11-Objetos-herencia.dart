class Celular {
  String Marca;
  String Modelo;

  // los campos y metodos estaticos permiten agregar comportamientos
  // comunes a las clases
  static String EtiquetaCelular = "Celular:";
  // Sintaxis de inicializacion corta
  Celular(this.Marca, this.Modelo);

  String get NombreCompleto => "$EtiquetaCelular $Marca $Modelo";

  static void encender(Celular celular) {
    print("Encendiendo... ${celular.Marca} - ${celular.Modelo}");
  }

}

class Iphone extends Celular {
  Iphone(String Marca, String Modelo) : super(Marca, Modelo);

@override
String toString() => "$Marca - $Modelo";
}
main() {
  Iphone iphoneX = new Iphone('iphone', 'X');
  print(iphoneX);
}
