import 'Carros.dart';
import 'Clientes.dart';
import 'dart:io';


List<Map<String, dynamic>> listaVendas = [];

mainVenda(){    


    print("----------Controle de Vendas----------");
    print("Digite o número da função que deseja realizar:");
    print("1-Realizar uma venda");
    print("2-Sair.");

    int funcaoEscolhida = int.parse(stdin.readLineSync()!);

    if (funcaoEscolhida < 1 || funcaoEscolhida > 2) {
      print("********************Comando inválido, escolha entre o número 1 ou 2!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: Realizar uma venda.");
          novaVenda();
          break;
        case 2:
          print("Saindo.");
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
    print("Desculpe, não há veiculos cadastrados.");
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
  
  }
  if (listaDeClientes.isEmpty) {
    print("Desculpe, não há clientes cadastrados.");
    return;
  }
  int veiculoSelec = int.parse(stdin.readLineSync()!);
  print("Selecione o cliente:");
  for (int i = 0; i < listaDeClientes.length; i++) {
    print("Cliente ${i}:");
    print("Nome Completo: ${listaDeClientes[i]['nomeCompleto']}");
    print("CPF: ${listaDeClientes[i]['cpf']}");
    print("Data de Nascimento: ${listaDeClientes[i]['dataNascimento']}");
    print("Endereço: ${listaDeClientes[i]['endereco']}");
    print("Telefone: ${listaDeClientes[i]['telefone']}");
    print("--------------------");
  }

  int clienteSelec = int.parse(stdin.readLineSync()!);
  venda['modelo'] = listaCarros[veiculoSelec]['modelo'];
  venda['ano'] = listaCarros[veiculoSelec]['ano'];
  venda['litragem'] = listaCarros[veiculoSelec]['litragem'];
  venda['versao'] = listaCarros[veiculoSelec]['versao'];
  venda['valor'] = listaCarros[veiculoSelec]['valor'];
  venda['nomeCompleto'] = listaDeClientes[clienteSelec]['nomeCompleto'];
  venda['cpf'] = listaDeClientes[clienteSelec]['cpf'];
  venda['dataNascimento'] = listaDeClientes[clienteSelec]['dataNascimento'];
  venda['endereco'] = listaDeClientes[clienteSelec]['endereco'];
  venda['telefone'] = listaDeClientes[clienteSelec]['telefone'];

  listaVendas.add(venda);
  listaCarros.remove(veiculoSelec);
  listaDeClientes.remove(clienteSelec);

  for (int i = 0; i < listaVendas.length; i++) {
    print("--------------------Venda ${i + 1} --------------------");
    print("Modelo: ${listaVendas[i]['modelo']}");
    print("Ano: ${listaVendas[i]['ano']}");
    print("Litragem: ${listaVendas[i]['litragem']}");
    print("Versao: ${listaVendas[i]['versao']}");
    print("Nome Completo: ${listaVendas[i]['nomeCompleto']}");
    print("CPF: ${listaVendas[i]['cpf']}");
    print("Data Nascimento: ${listaVendas[i]['dataNascimento']}");
    print("Enderço: ${listaVendas[i]['endereco']}");
    print("Telefone: ${listaVendas[i]['telefone']}");
    print("--------------------------------------------------------");
}

print('Deseja realizar mais uma venda?\n1-Sim\n2-Não');
int? choiceVenda = int.parse(stdin.readLineSync()!);

if(choiceVenda == 1) {
  mainVenda();
} else {
  return;
}


}
