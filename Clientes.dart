import 'dart:io';
import 'Principal.dart';

List<Map<String, dynamic>> listaDeClientes = [];

void inicializarClientes() {
  limparTela();
  bool rodando = true;
  while (rodando) {
    print("----------Aba Clientes----------");
    print("Digite o número da função que deseja realizar:");
    print("1-Cadastrar um registro");
    print("2-Atualizar um registro");
    print("3-Listar todos os clientes");
    print("4-Deletar um registro");
    print("5-Sair da aba de clientes.");
    int funcaoEscolhida = int.parse(stdin.readLineSync()!);

    if (funcaoEscolhida < 1 || funcaoEscolhida > 5) {
      print("********************Comando inválido, escolha um número entre 1 e 5!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          limparTela();
          print("Você escolheu: Cadastrar um registro.");
          cadastrar();
          break;
        case 2:
          limparTela(); 
          print("Você escolheu: Atualizar um registro.");         
          atualizar();
          break;
        case 3:
          limparTela();        
          print("Você escolheu: Listar todos os clientes.");
          listarTodos();
          break;
        case 4:
          limparTela();
          print("Você escolheu: Deletar um registro.");
          deletar();
          break;
        case 5:
          limparTela();
          print("Saindo.");
          rodando = false;
          break;
      }
    }
  }
}

void cadastrar() {
  Map<String, dynamic> cadastro = {};
  print('--------------------------');
  print('Digite o nome completo: ');
  cadastro['nomeCompleto'] = stdin.readLineSync();

  print('Digite o CPF: ');
  cadastro['cpf'] = stdin.readLineSync();

  print('Digite a data de nascimento (DD/MM/AAAA): ');
  cadastro['dataNascimento'] = stdin.readLineSync();

  print('Digite o endereço completo: ');
  cadastro['endereco'] = stdin.readLineSync();

  print('Digite o telefone: ');
  cadastro['telefone'] = stdin.readLineSync();

  listaDeClientes.add(cadastro);
}

void atualizar() {
  if (listaDeClientes.isEmpty) {
    print("Não há clientes cadastrados para atualizar.");
    return;
  }

  print("Digite o índice do cliente que deseja atualizar:");
  for (int i = 0; i < listaDeClientes.length; i++) {
    print("$i: ${listaDeClientes[i]['nomeCompleto']}");
  }

  int indiceCliente = int.parse(stdin.readLineSync()!);

  if (indiceCliente < 0 || indiceCliente >= listaDeClientes.length) {
    print("Índice inválido.");
    return;
  }

  print('Digite o novo nome completo: ');
  listaDeClientes[indiceCliente]['nomeCompleto'] = stdin.readLineSync();

  print('Digite o novo CPF: ');
  listaDeClientes[indiceCliente]['cpf'] = stdin.readLineSync();

  print('Digite a nova data de nascimento (DD/MM/AAAA): ');
  listaDeClientes[indiceCliente]['dataNascimento'] = stdin.readLineSync();

  print('Digite o novo endereço completo: ');
  listaDeClientes[indiceCliente]['endereco'] = stdin.readLineSync();

  print('Digite o novo telefone: ');
  listaDeClientes[indiceCliente]['telefone'] = stdin.readLineSync();

  print("Cliente atualizado com sucesso.");
}

void listarTodos() {
  if (listaDeClientes.isEmpty) {
    print("Não há clientes cadastrados.");
    return;
  }

  print("Clientes cadastrados:");
  for (int i = 0; i < listaDeClientes.length; i++) {
    print("Cliente ${i + 1}:");
    print("Nome Completo: ${listaDeClientes[i]['nomeCompleto']}");
    print("CPF: ${listaDeClientes[i]['cpf']}");
    print("Data de Nascimento: ${listaDeClientes[i]['dataNascimento']}");
    print("Endereço: ${listaDeClientes[i]['endereco']}");
    print("Telefone: ${listaDeClientes[i]['telefone']}");
    print("--------------------");
  }
}

void deletar() {
  if (listaDeClientes.isEmpty) {
    print("Não há clientes para deletar.");
    return;
  }

  print("Digite o índice do cliente que deseja deletar:");
  for (int i = 0; i < listaDeClientes.length; i++) {
    print("$i: ${listaDeClientes[i]['nomeCompleto']}");
  }

  int indiceCliente = int.parse(stdin.readLineSync()!);

  if (indiceCliente < 0 || indiceCliente >= listaDeClientes.length) {
    print("Índice inválido.");
    return;
  }

  listaDeClientes.removeAt(indiceCliente);
  print("Cliente removido com sucesso.");
}
