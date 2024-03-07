class ClientesManager {
  static List<Map<String, dynamic>> listaDeClientes = [];

  static void cadastrar(Map<String, dynamic> cadastro) {
    listaDeClientes.add(cadastro);
  }

  static void atualizar(int indiceCliente, Map<String, dynamic> novoCadastro) {
    listaDeClientes[indiceCliente] = novoCadastro;
  }

  static void deletar(int indiceCliente) {
    listaDeClientes.removeAt(indiceCliente);
  }

  static List<Map<String, dynamic>> listarTodos() {
    return List<Map<String, dynamic>>.from(listaDeClientes);
  }
}
