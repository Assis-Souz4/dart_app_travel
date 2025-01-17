import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = 'ybaxybxaaaaa';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registroVisitados = <String>{};
  Map<String, dynamic> registrarPecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('Vou de carro para a aventura');
        break;
      case Transporte.bike:
        print('Vou de bike para a aventura');
        break;
      case Transporte.aviao:
        print('Vou de avião para a aventura');
        break;
      case Transporte.trem:
        print('Vou de trem para a aventura');
        break;
      default:
        print('Vou para a aventura');
    }
  }

  void visitar(String localVisita) {
    registroVisitados.add(localVisita);
    _totalLocaisVisitados++;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(novaQnt) {
    if (novaQnt < 10) {
      _totalLocaisVisitados = novaQnt;
    } else {
      print('Atenção verifique se vc realmente visitou ${novaQnt} locais.');
    }
  }
}
