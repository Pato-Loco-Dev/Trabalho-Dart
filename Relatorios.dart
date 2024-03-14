import 'dart:io';
import 'Clientes.dart';
import 'ClientesManager.dart'; // Importar o arquivo onde a lista de clientes está definida

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

          // Abre o arquivo para escrita
          var sink = file.openWrite();

          // Escreve cada cliente no arquivo
          for (var cliente in listaDeClientes) { // Usar listaDeClientes diretamente
            sink.writeln("Nome Completo: ${cliente['nomeCompleto']}");
            sink.writeln("CPF: ${cliente['cpf']}");
            sink.writeln("Data de Nascimento: ${cliente['dataNascimento']}");
            sink.writeln("Endereço: ${cliente['endereco']}");
            sink.writeln("Telefone: ${cliente['telefone']}");
            sink.writeln("--------------------");
          }

          // Fecha o arquivo após escrever todos os clientes
          
          sink.close();
          print("Relatório de clientes cadastrados salvo com sucesso.");
          rodando = false;
          ClientesManager.StopInicializar = false;          
          
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
