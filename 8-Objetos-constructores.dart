class Celular {
  String Marca;
  String Modelo;

  // Constructor normal
  // Celular(String marca, String modelo){
  //   this.Marca = marca;
  //   this.Modelo = modelo;
  // }

  // Sintaxis de inicializacion corta
  Celular(this.Marca, this.Modelo);

  // Dart no tiene sobrecarga para constructores
  // Pero se puede definicir constructores alternaticos, Constructor con nombre
  Celular.anomino() {}

  String getNombreCompleto() => "$Marca - $Modelo";
}



main() {
  Celular samsungS10 = new Celular('Samsung', 'Galaxy S10');
  print(samsungS10.getNombreCompleto());
}
