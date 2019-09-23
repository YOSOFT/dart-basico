class Celular {
  String Marca;
  String Modelo;
  // Sintaxis de inicializacion corta
  Celular(this.Marca, this.Modelo);

  // String getNombreCompleto() => "$Marca $Modelo";
  //Podriamos redifinir esta funcion como una propiedad utilizando un get 

  String get NombreCompleto => "$Marca $Modelo";
  // No es necesario que este el get y el set juntos se pueden utilizar cuando
  // se necesiten
  set NombreCompleto(String nombreCompleto){
    // se omiten validaciones
    var partes = nombreCompleto.split(' ');
    this.Marca = partes.first;
    this.Modelo = partes.last;
  }
}



main() {
  Celular iphone = new Celular('iphone', 'X');
  print(iphone.NombreCompleto);
  iphone.NombreCompleto = "iphone 11";
  print(iphone.NombreCompleto);
}
