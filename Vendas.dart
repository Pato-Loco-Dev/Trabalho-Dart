import 'Carros.dart';
import 'Clientes.dart';
import 'dart:io';


List<Map<String, dynamic>> listaVendas = [];

mainVenda(){    

    bool rodando = true;

    print("----------Controle de Vendas----------");
    print("Digite o número da função que deseja realizar:");
    print("1-Realizar uma venda");
    print("2-Atualizar uma venda");
    print("3-Listar todos as vendas");
    print("4-Deletar uma venda");
    print("5-Sair.");

    int funcaoEscolhida = int.parse(stdin.readLineSync()!);

    if (funcaoEscolhida < 1 || funcaoEscolhida > 5) {
      print("********************Comando inválido, escolha um número entre 1 e 5!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: Realizar uma venda.");
          novaVenda();
          break;
        case 2:
          print("Você escolheu: Atualizar um veiculo.");
          
          break;
        case 3:
          print("Você escolheu: Listar todos os veiculos.");
          
          break;
        case 4:
          print("Você escolheu: Deletar um veiculo.");
          
          break;
        case 5:
          print("Saindo.");
          rodando = false;
          break;
      }
    }

}

novaVenda() {
  Map<String, dynamic> venda = {};
  print('\x1B[2J\x1B[0;0H');
  print('\x1B[2J\x1B[0;0H');
  print('--------------------------');
  if (listaCarros.isEmpty) {
    print("Não há veiculos cadastrados.");
    return;
  }else {
    print('Selecione o veiculo:');
  for (int i = 0; i < listaCarros.length; i++) {
    print("Carro ${i}:");
    print("Modelo: ${listaCarros[i]['modelo']}");
    print("Ano: ${listaCarros[i]['ano']}");
    print("Litragem: ${listaCarros[i]['litragem']}");
    print("versao: ${listaCarros[i]['versao']}");
    print("Valor: ${listaCarros[i]['valor']}");
    print("--------------------");
  }
  int veiculoSelec = int.parse(stdin.readLineSync()!);
  }
  if (listaDeClientes.isEmpty) {
    print("Desculpe, não há clientes cadastrados.");
    return;
  }

  print("Selecione o cliente:");
  for (int i = 0; i < listaDeClientes.length; i++) {
    print("Cliente ${i + 1}:");
    print("Nome Completo: ${listaDeClientes[i]['nomeCompleto']}");
    print("CPF: ${listaDeClientes[i]['cpf']}");
    print("Data de Nascimento: ${listaDeClientes[i]['dataNascimento']}");
    print("Endereço: ${listaDeClientes[i]['endereco']}");
    print("Telefone: ${listaDeClientes[i]['telefone']}");
    print("--------------------");
  }
  int clienteSelec = int.parse(stdin.readLineSync()!);

  print('Digite o modelo: ');
  venda['modelo'] = listaCarros;

  print('Digite o ano: ');
  venda['ano'] = stdin.readLineSync();

  print('Digite a litragem: ');
  venda['litragem'] = stdin.readLineSync();

  print('Digite a versão: ');
  venda['versao'] = stdin.readLineSync();

  print('Digite o valor: ');
  venda['valor'] = stdin.readLineSync();

  listaVendas.add(venda);
}
