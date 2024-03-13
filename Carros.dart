import 'dart:io';

List<Map<String, dynamic>> listaCarros = [];

void mainCarros() {
  bool rodando = true;
  while (rodando) {
    print("----------Gerenciamento de Veiculos----------");
    print("Digite o número da função que deseja realizar:");
    print("1-Cadastrar um veiculo");
    print("2-Atualizar um veiculo");
    print("3-Listar todos os veiculos");
    print("4-Deletar um veiculo");
    print("5-Sair.");
    int funcaoEscolhida = int.parse(stdin.readLineSync()!);

    if (funcaoEscolhida < 1 || funcaoEscolhida > 5) {
      print("********************Comando inválido, escolha um número entre 1 e 5!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: Cadastrar um veiculo.");
          cadastrar();
          break;
        case 2:
          print("Você escolheu: Atualizar um veiculo.");
          atualizar();
          break;
        case 3:
          print("Você escolheu: Listar todos os veiculos.");
          listarTudo();
          break;
        case 4:
          print("Você escolheu: Deletar um veiculo.");
          deletar();
          break;
        case 5:
          print("Saindo.");
          rodando = false;
          break;
      }
    }
  }
}

void cadastrar() {
  Map<String, dynamic> cadastro = {};
  print('\x1B[2J\x1B[0;0H');
  print('\x1B[2J\x1B[0;0H');
  print('--------------------------');
  print('Digite o modelo: ');
  cadastro['modelo'] = stdin.readLineSync();

  print('Digite o ano: ');
  cadastro['ano'] = stdin.readLineSync();

  print('Digite a litragem: ');
  cadastro['litragem'] = stdin.readLineSync();

  print('Digite a versão: ');
  cadastro['versao'] = stdin.readLineSync();

  print('Digite o valor: ');
  cadastro['valor'] = stdin.readLineSync();

  listaCarros.add(cadastro);
}

void atualizar() {
  if (listaCarros.isEmpty) {
    print("Não há carros cadastrados para atualizar.");
    return;
  }

  print("Digite o índice do carro que deseja atualizar:");
  for (int i = 0; i < listaCarros.length; i++) {
    print("$i: ${listaCarros[i]['modelo']}");
  }

  int indiceCarro = int.parse(stdin.readLineSync()!);

  if (indiceCarro < 0 || indiceCarro >= listaCarros.length) {
    print("Índice inválido.");
    return;
  }

  print('Qual informação deseja alterar?');
  print('1-Modelo\n2-Ano\n3-Litragem\n4-Versão\n5-Valor\n6-Todos\n7-Voltar');
  int? choiceAtualizar = int.parse(stdin.readLineSync()!);

  switch (choiceAtualizar) {
        case 1:
          print("Digite o novo Modelo:");
          listaCarros[indiceCarro]['modelo'] = stdin.readLineSync();
          break;
        case 2:
          print("Digite o novo Ano:");
          listaCarros[indiceCarro]['ano'] = stdin.readLineSync();
          break;
        case 3:
          print("Digite a nova Litragem:");
          listaCarros[indiceCarro]['litragem'] = stdin.readLineSync();
          break;
        case 4:
          print("Digite a nova versão:");
          listaCarros[indiceCarro]['versao'] = stdin.readLineSync();
          break;
        case 5:
          print("Digite o novo Valor:");
          listaCarros[indiceCarro]['valor'] = stdin.readLineSync();
          break;
        case 6:
          print("Digite o novo Modelo:");
          listaCarros[indiceCarro]['modelo'] = stdin.readLineSync();

          print("Digite o novo Ano:");
          listaCarros[indiceCarro]['ano'] = stdin.readLineSync();
          
          print("Digite a nova Litragem:");
          listaCarros[indiceCarro]['litragem'] = stdin.readLineSync();

          print("Digite a nova versão:");
          listaCarros[indiceCarro]['versao'] = stdin.readLineSync();

          print("Digite o novo Valor:");
          listaCarros[indiceCarro]['valor'] = stdin.readLineSync();
      }

    print('Veiculo atualizado com sucesso!');
}

void listarTudo() {
  if (listaCarros.isEmpty) {
    print("Não há veiculos cadastrados.");
    return;
  }else {
    print("Veiculos cadastrados:");
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
}

void deletar() {
  if (listaCarros.isEmpty) {
    print("Não há veiculos para deletar.");
    return;
  }

  print("Digite o índice do veiculo que deseja deletar:");
  for (int i = 0; i < listaCarros.length; i++) {
    print("$i: ${listaCarros[i]['modelo']}");
  }

  int indiceCarro= int.parse(stdin.readLineSync()!);

  if (indiceCarro < 0 || indiceCarro >= listaCarros.length) {
    print("Índice inválido.");
    return;
  }

  listaCarros.removeAt(indiceCarro);
  print("Veiculo removido com sucesso.");
}
