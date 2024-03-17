import 'dart:io';
import 'Clientes.dart';
import 'Relatorios.dart'; 
import 'Carros.dart';
import 'Vendas.dart';

void main() {
    inicializar();
}

void inicializar() {
  limparTela();
  ClientesManager.StopInicializar = true;
  while (ClientesManager.StopInicializar) {

    
    print("----------BEM VINDO!----------");
    print("Digite o número da função que deseja realizar:");
    print("1-Acessar área CLIENTES");
    print("2-Acessar área VEÍCULOS");
    print("3-Acessar área VEÍCULOS EM ESTOQUE");
    print("4-Acessar área de VENDAS");
    print("5-Acessar área de RELATÓRIOS.");
    print("6-Sair");

    int funcaoEscolhida = int.parse(stdin.readLineSync()!);

    if (funcaoEscolhida < 1 || funcaoEscolhida > 6) {
      print("********************Comando inválido, escolha um número entre 1 e 6!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: ÁREA DE CLIENTES");
          // Chame a função inicializarClientes() do arquivo 02
          inicializarClientes();
          break; // Não se esqueça de adicionar break após cada case
        case 2:
          print("Você escolheu: ÁREA DE PRODUTOS");
          mainCarros();
          break;
        case 3:
          print("Você escolheu: ÁREA DE VEÍCULOS EM ESTOQUE");
          //Chamar metodos
          break;
        case 4:
          print("Você escolheu: ÁREA DE VENDAS");
          mainVenda();
          break;
        case 5:
          print("Você escolheu: ÁREA DE RELATÓRIOS.");
          inicializarRelatorios();
          break;
        case 6: 
          print("Saindo");
          ClientesManager.StopInicializar=false;
          break;
      }
    }
  }
}

limparTela() {
  print('\x1B[2J\x1b[0;0H');
}
