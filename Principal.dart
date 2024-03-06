import 'dart:io';

List<Map<String, dynamic>> listaDeClientes = [];

void main() {
  inicializar();
}

void inicializar() {
  bool rodando = true;
  while (rodando) {
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
      print("********************Comando inválido, escolha um número entre 1 e 5!********************");
    } else {
      switch (funcaoEscolhida) {
        case 1:
          print("Você escolheu: ÁREA DE CLIENTES");
          //Chamar metodos
        case 2:
          print("Você escolheu: ÁREA DE VENDAS");
          //Chamar metodos
        case 3:
          print("Você escolheu: ÁREA DE VEÍCULOS EM ESTOQUE");
          //Chamar metodos
        case 4:
          print("Você escolheu: ÁREA DE VENDAS");
          //Chamar metodos
        case 5:
          print("Você escolheu: ÁREA DE RELATÓRIOS.");
          //Chamar metodos
        case 6: 
          print("Saindo");
          rodando=false;
          break;
      }
    }
  }
}
