import 'dart:io';
import 'Clientes.dart';
import 'Principal.dart';
import 'Vendas.dart';

void main() {
  inicializarRelatorios();
}

void inicializarRelatorios() {


  bool rodando = true;

  while (rodando) {
    limparTela();
    print("ÁREA DE RELATÓRIOS, ESCOLHA O QUE VOCÊ DESEJA:");
    print("1- Relatório de clientes cadastrados.");
    print("2- Relatório de total de vendas.");
    print("3- Sair");

    int funcaoEscolhida = int.parse(stdin.readLineSync()!);
    if (funcaoEscolhida < 1 || funcaoEscolhida > 3) {
      print("********************Comando inválido, escolha um número entre 1 e 3!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          relatorioClientes();
          rodando = false;
          break;
        case 2:
          relatorioVendas();
          rodando=false;
          break;
        case 3:
          rodando = false;
          break;
      }
    }
  }
}

void relatorioVendas() async{
  limparTela();
  print("Você escolheu: Relatório de vendas.");
  try {
    final file = File('lista-vendas.txt');
    final sink = file.openWrite();

    for (var venda in VendasManager.listaVendas) {
    await file.writeAsString(venda.toString());
    }

    await sink.close();
    print('Relatório de vendas gravado com sucesso.');
  } catch (e) {
    print('Erro ao gravar relatório de vendas: $e');
  }

}

void relatorioClientes() async {
  limparTela();
  print("Você escolheu: Relatório de clientes cadastrados.");

  try {
    final file = File('lista-clientes.txt');
    final sink = file.openWrite();

    for (var cliente in ClientesManager.listaDeClientes) {
    await file.writeAsString(cliente.toString());
    }

    await sink.close();
    print('Relatório de clientes gravado com sucesso.');
  } catch (e) {
    print('Erro ao gravar relatório de clientes: $e');
  }
}
