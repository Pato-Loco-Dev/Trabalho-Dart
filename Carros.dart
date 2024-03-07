import "dart:io";
import 'dart:collection';

main(){

  Map carros = Map<int, Carro>();
  int chaveCarro = 0;

  adicionarVeiculo(carros, chaveCarro);


}

adicionarVeiculo(Map carros, int chaveCarro){


  print("Digite o modelo do veículo:");
  String modelo = stdin.readLineSync()!;
  print("Digite o ano do veículo:");
  int ano = int.parse(stdin.readLineSync()!);
  print("Digite a litragem do veículo:");
  String litragem = stdin.readLineSync()!;
  print("Digite a carroceria do veículo:");
  String carroceria = stdin.readLineSync()!;

  var newCarro = Carro(modelo, ano, litragem, carroceria);

  carros[chaveCarro] = newCarro;
  chaveCarro += 1;
  int? choice = int.parse(stdin.readLineSync()!);
  if(choice == 1) {
    adicionarVeiculo(carros, chaveCarro);
  } else {
    print(carros);
    carros.forEach((chaveCarro, Carro) {
    print('Chave: $chaveCarro, Carro: ${newCarro.modelo}, Ano: ${newCarro.ano}, Litragem: ${newCarro.litragem}, Carroceria: ${newCarro.carroceria}');
  });
  }
  
}




class Carro {
  String modelo;
  int ano;
  String litragem;
  String carroceria;

    Carro(this.modelo, this.ano, this.litragem, this.carroceria);
}