import 'dart:io';

import 'Clientes.dart'; 
import 'ClientesManager.dart';


main(){
  inicializarRelatorios();
}

void inicializarRelatorios() {
  bool rodando = true;
  while (rodando) {
  print("ÁREA DE RELÁTORIOS, ESCOLHA O QUE VOCÊ DESEJA:");
  print("1-Relatório de clientes cadastrados.");
  print("2-Relatorio de total de vendas.");
  print("3-Sair");
  int funcaoEscolhida = int.parse(stdin.readLineSync()!);

    if (funcaoEscolhida < 1 || funcaoEscolhida > 3) {
      print("********************Comando inválido, escolha um número entre 1 e 2!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: Relatório de clientes cadastrados.");
          print(listaDeClientes);
          ClientesManager.listarTodos(); // Chama o método diretamente da classe Clientes
          break; // Não se esqueça de adicionar break após cada case
        case 2:
          print("Você escolheu: Relatorio de total de vendas.");
          //Chamar metodos
          break;
        case 3:
          print("Saindo.");
          rodando = false;
          break;
      }
  }
  }
}