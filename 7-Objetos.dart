class Celular {
  String Marca;
  String Modelo;
  TiposGama Gama;

  String getNombreCompleto() => "$Marca - $Modelo";
}

enum TiposGama { baja, media, alta }

main() {
  // Para instanciar la clase podemos omitir la palabra new
  Celular iphone11 = new Celular();
  //Notacion de puntos
  iphone11.Marca = "iphone";
  iphone11.Modelo = "11";
  iphone11.Gama = TiposGama.alta;

  print(iphone11.getNombreCompleto());

  //Valores de la enumeracion
  print(TiposGama.values);
  //Valor
  print(iphone11.Gama);
  //Indice de la enumeracion
  print(iphone11.Gama.index);

  //notacion en cascada
  Celular samsungS10= Celular()
    ..Marca = "Samsung"
    ..Modelo = "Galaxy S10";

  print(samsungS10.getNombreCompleto());
}
