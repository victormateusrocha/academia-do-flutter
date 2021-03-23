void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  int total = 0;
  var familias = List();
  var paciente = List();

  for (var i = 0; i < pacientes.length; i++) {
    paciente = pacientes[i].split('|');
    var nome = paciente[0].split(' ');
    if (!familias.contains(nome[1])) {
      familias.add(nome[1]);
    }

    int idade = int.parse(paciente[1]);
    if (idade > 20) {
      total++;
    }
  }

  print('Existem $total pacientes com mais de 20 anos');

  for (var f in familias) {
    print('');
    print('Família: $f');
    for (var i = 0; i < pacientes.length; i++) {
      paciente = pacientes[i].split('|');
      var nomeCompleto = paciente[0];
      if (nomeCompleto.contains(f)) {
        print('     $nomeCompleto');
      }
    }
  }
}
