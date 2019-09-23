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


main() {
  Celular iphone = new Celular('iphone', 'X');
  print(iphone.NombreCompleto);

  Celular samsungS10 = new Celular('Samsung', 'S10');
  print(samsungS10.NombreCompleto);

 //Cambiando la propiedad estatica
  Celular.EtiquetaCelular = "Super Celulares:";
  iphone = new Celular('iphone', 'X');
  print(iphone.NombreCompleto);

  samsungS10 = new Celular('Samsung', 'S10');
  print(samsungS10.NombreCompleto);

  //Llamando al metodo estatico
  Celular.encender(iphone);
  Celular.encender(samsungS10);
}
