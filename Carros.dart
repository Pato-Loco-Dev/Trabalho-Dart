import "dart:io";
import 'dart:collection';

main(){

  Map carros = Map<int, Carro>();

  adicionarVeiculo(carros);


}

class Carro {
  String? modelo;
  int? ano;
  String? litragem;
  String? carroceria;

    Carro(){
      this.modelo = "";
      this.ano = 0;
      this.litragem = "";
      this.carroceria = "";

    }
}

adicionarVeiculo(Map carros){

  Carro newCarro = new Carro();



}