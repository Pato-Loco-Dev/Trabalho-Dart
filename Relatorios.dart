import 'dart:io';
import 'Clientes.dart';
import 'ClientesManager.dart'; 

void main() {
  inicializarRelatorios();
}

Future<void> inicializarRelatorios() async {
  print("ÁREA DE RELATÓRIOS, ESCOLHA O QUE VOCÊ DESEJA:");
  print("1- Relatório de clientes cadastrados.");
  print("2- Relatório de total de vendas.");
  print("3- Sair");
  
  int funcaoEscolhida = int.parse(stdin.readLineSync()!);
  bool rodando = true;
  
  while (rodando) {
    if (funcaoEscolhida < 1 || funcaoEscolhida > 3) {
      print("********************Comando inválido, escolha um número entre 1 e 3!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: Relatório de clientes cadastrados.");
          final filename = 'lista-clientes.txt';
          var file = File(filename);
          var variavel = file.writeAsString(listaDeClientes.toString());
          print("Salvo com sucesso.");
          ClientesManager.StopInicializar = true;
          rodando = false;
          break;
        case 2:
          print("Você escolheu: Relatório de total de vendas.");
          // Chamar métodos
          break;
        case 3:
          print("Saindo.");
          rodando = false;
          break;
      }
    }
  }
}
