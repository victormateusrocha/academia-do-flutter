main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  int quantMasculino = 0;
  int quantFeminino = 0;
  int quantMaiores18 = 0;
  Set<String> listaPessoas = Set<String>();
  Set<String> listaPessoasMaiores18 = Set<String>();
  Set<int> listaIdades = Set<int>();

  for (var p in pessoas) {
    listaPessoas.add(p);
  }
  print('1 - Remover os duplicados');
  print('');

  for (var p in listaPessoas) {
    print(p);
    var pessoa = p.split('|');
    if (pessoa[2] == 'Masculino') {
      quantMasculino++;
    } else if (pessoa[2] == 'Feminino') {
      quantFeminino++;
    }
  }

  print('');
  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
  print(
      'Masculino - $quantMasculino pessoas, Feminino - $quantFeminino pessoas');

  for (var p in listaPessoas) {
    var pessoa = p.split('|');
    if (int.parse(pessoa[1]) > 18) {
      quantMaiores18++;
      listaPessoasMaiores18.add(p);
    }
  }

  print('');
  print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos');
  for (var p in listaPessoasMaiores18) {
    var pessoa = p.split('|');
    print(pessoa[0] + ' - ' + pessoa[1] + ' anos');
  }

  print('');
  print('Quantidade de pessoas com mais de 18 anos: $quantMaiores18');

  for (var p in listaPessoas) {
    var pessoa = p.split('|');
    listaIdades.add(int.parse(pessoa[1]));
  }

  List<int> novaListaIdades = listaIdades.toList();
  novaListaIdades.sort((n1, n2) => n1.compareTo(n2));
  int idadeMaior = novaListaIdades.last;

  print('');
  for (var p in listaPessoas) {
    var pessoa = p.split('|');
    if (int.parse(pessoa[1]) == idadeMaior) {
      print('Pessoa mais velha: ${pessoa[0]} com ${pessoa[1]} anos');
    }
  }

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.
}
