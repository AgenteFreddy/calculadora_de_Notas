import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: calc(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 137, 46, 87),
      ),
    );
  }
}

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calc();
}

class _calc extends State<calc> {
  final TextEditingController accontroller = TextEditingController();
  final TextEditingController atcontroller = TextEditingController();
  final TextEditingController aghcontroller = TextEditingController();

  double media = 0;
  double ac = 0;
  double at = 0;
  double agh = 0;

  double acLpl = 0;
  double atLpl = 0;

  double acPit = 0;
  double atPit = 0;

  double acMatematica = 0;
  double atMatematica = 0;

  double acHF = 0;
  double atHF = 0;

  double acGS = 0;
  double atGS = 0;

  double acFisica = 0;
  double atFisica = 0;

  double acQuimica = 0;
  double atQuimica = 0;

  double acBiologia = 0;
  double atBiologia = 0;

  double acArte = 0;
  double atArte = 0;

  double acIngles = 0;
  double atIngles = 0;

  double acDS = 0;
  double atDS = 0;

  double acFlutter = 0;
  double atFlutter = 0;

  double acIot = 0;
  double atIot = 0;

  double acHandsOn = 0;
  double atHandsOn = 0;

  double acPython = 0;
  double atPython = 0;

  double acEdFisica = 0;
  double atEdFisica = 0;
  double mediaLpl = 0;
  double mediaPit = 0;
  double mediaMetematica = 0;
  double mediaHF = 0;
  double mediaGS = 0;
  double mediaFisica = 0;
  double mediaQuimica = 0;
  double mediaBiologia = 0;
  double mediaArte = 0;
  double mediaIngles = 0;
  double mediaDS = 0;
  double mediaFlutter = 0;
  double mediaIot = 0;
  double mediaHandsOn = 0;
  double mediaPython = 0;
  double mediaEdFisica = 0;

  String? selecmateria;
  final List<String> materias = [
    'Nenhum',
    'LPL',
    'PIT',
    'Matematica',
    'Historia e Filosofia',
    'Geografia e Sociologia',
    'Fisica',
    'Quimica',
    'Biologia',
    'Arte',
    'Ingles',
    'Design de Software',
    'Flutter',
    'Iot',
    'Hands-on',
    'Python',
    'Ed.fisica'
  ];

  void fastcalc() {
    double ac = double.tryParse(accontroller.text) ?? 0;
    double at = double.tryParse(atcontroller.text) ?? 0;
    double agh = double.tryParse(aghcontroller.text) ?? 0;

    setState(() {
      media = (((ac * 3) + (at * 5) + (agh * 2)) / 10);
    });
  }

  void adicionar() {
    double ac = double.tryParse(accontroller.text) ?? 0;
    double at = double.tryParse(atcontroller.text) ?? 0;
    double agh = double.tryParse(aghcontroller.text) ?? 0;

    setState(() {
      if (selecmateria == 'LPL') {
        acLpl = ac;
        atLpl = at;
        mediaLpl = (((acLpl * 3) + (atLpl * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'PIT') {
        acPit = ac;
        atPit = at;
        mediaPit = (((acPit * 3) + (atPit * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Matematica') {
        acMatematica = ac;
        atMatematica = at;
        mediaMetematica = (((acPit * 3) + (atPit * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Historia e Filosofia') {
        acHF = ac;
        atHF = at;
        mediaHF = (((acHF * 3) + (atHF * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Geografia e Sociologia') {
        acGS = ac;
        atGS = at;
        mediaGS = (((acGS * 3) + (atGS * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Fisica') {
        acFisica = ac;
        atFisica = at;
        mediaFisica = (((acFisica * 3) + (atFisica * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Quimica') {
        acQuimica = ac;
        atQuimica = at;
        mediaQuimica = (((acQuimica * 3) + (atQuimica * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Biologia') {
        acBiologia = ac;
        atBiologia = at;
        mediaBiologia = (((acBiologia * 3) + (atBiologia * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Arte') {
        acArte = ac;
        atArte = at;
        mediaArte = (((acArte * 3) + (atArte * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Ingles') {
        acIngles = ac;
        atIngles = at;
        mediaIngles = (((acIngles * 3) + (atIngles * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Design de Software') {
        acDS = ac;
        atDS = at;
        mediaDS = (((acDS * 3) + (atDS * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Flutter') {
        acFlutter = ac;
        atFlutter = at;
        mediaFlutter = (((acFlutter * 3) + (atFlutter * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Iot') {
        acIot = ac;
        atIot = at;
        mediaIot = (((acIot * 3) + (atIot * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Hands-on') {
        acHandsOn = ac;
        atHandsOn = at;
        mediaHandsOn = (((acHandsOn * 3) + (atHandsOn * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Python') {
        acPython = ac;
        atPython = at;
        mediaPython = (((acPython * 3) + (atPython * 5) + (agh * 2)) / 10);
      } else if (selecmateria == 'Ed.fisica') {
        acEdFisica = ac;
        atEdFisica = at;
        mediaEdFisica = (((acEdFisica * 3) + (atEdFisica * 5) + (agh * 2)) / 10);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Bem Vindos (EM BETA 0.2)'),//hehehehehehehehehehehe
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FastCalc', style: TextStyle(
                fontSize: 30
              ),),
              SizedBox(height: 10, width: 10,),
              TextField(
                controller: atcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 183, 250),
                  border: OutlineInputBorder(),
                  labelText: 'AT',
                ),
              ),
              SizedBox(height: 10, width: 10),
              TextField(
                controller: aghcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 183, 250),
                  border: OutlineInputBorder(),
                  labelText: 'AGH',
                ),
              ),
              SizedBox(height: 10, width: 10),
              TextField(
                controller: accontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 183, 250),
                  border: OutlineInputBorder(),
                  labelText: 'AC',
                ),
              ),
              SizedBox(height: 10, width: 10),
              ElevatedButton(onPressed: fastcalc, child: Text('Calcule')),
              SizedBox(width: 10, height: 10),
              Card(
                child: 
                  Row(
                    children: [
                      Expanded(
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                          child: Row( 
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            ElevatedButton(onPressed: adicionar, 
                              child: Text('Adicionar', style: TextStyle(fontSize: 16),)
                            ),
                            SizedBox(width: 10, height: 10),
                            Text('Resultado: $media', style: TextStyle(fontSize: 16),),
                            SizedBox(width: 10, height: 10),
                            DropdownButton(
                              value: selecmateria,
                              hint: const Text('Selecione'),
                              items: materias.map((String materia){
                                return DropdownMenuItem(
                                  value: materia,
                                  child: Text(materia)
                                );
                              }).toList(), 
                              onChanged: (String? valor){
                                setState(() {
                                  selecmateria = valor;
                                });
                              })
                          ],)
                        )
                  )],
                  ),
                ),
              SizedBox(width: 20, height: 20),
              tabela(
                  acLpl: acLpl,
                  atLpl: atLpl,
                  acPit: acPit,
                  atPit: atPit,
                  acMatematica: acMatematica,
                  atMatematica: atMatematica,
                  acHF: acHF,
                  atHF: atHF,
                  acGS: acGS,
                  atGS: atGS,
                  acFisica: acFisica,
                  atFisica: atFisica,
                  acQuimica: acQuimica,
                  atQuimica: atQuimica,
                  acBiologia: acBiologia,
                  atBiologia: atBiologia,
                  acArte: acArte,
                  atArte: atArte,
                  acIngles: acIngles,
                  atIngles: atIngles,
                  acDS: acDS,
                  atDS: atDS,
                  acFlutter: acFlutter,
                  atFlutter: atFlutter,
                  acIot: acIot,
                  atIot: atIot,
                  acHandsOn: acHandsOn,
                  atHandsOn: atHandsOn,
                  acPython: acPython,
                  atPython: atPython,
                  acEdFisica: acEdFisica,
                  atEdFisica: atEdFisica,
                  mediaLpl: mediaLpl,
                  mediaPit: mediaPit,
                  mediaMetematica: mediaMetematica,
                  mediaHF: mediaHF,
                  mediaGS: mediaGS,
                  mediaFisica: mediaFisica,
                  mediaQuimica: mediaQuimica,
                  mediaBiologia: mediaBiologia,
                  mediaArte: mediaArte,
                  mediaIngles: mediaIngles,
                  mediaDS: mediaDS,
                  mediaFlutter: mediaFlutter,
                  mediaIot: mediaIot,
                  mediaHandsOn: mediaHandsOn,
                  mediaPython: mediaPython,
                  mediaEdFisica: mediaEdFisica,
              ),
              SizedBox(width: 20, height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class tabela extends StatefulWidget {
  final double acLpl;
  final double atLpl;

  final double acPit;
  final double atPit;

  final double acMatematica;
  final double atMatematica;

  final double acHF;
  final double atHF;

  final double acGS;
  final double atGS;

  final double acFisica;
  final double atFisica;

  final double acQuimica;
  final double atQuimica;

  final double acBiologia;
  final double atBiologia;

  final double acArte;
  final double atArte;

  final double acIngles;
  final double atIngles;

  final double acDS;
  final double atDS;

  final double acFlutter;
  final double atFlutter;

  final double acIot;
  final double atIot;

  final double acHandsOn;
  final double atHandsOn;

  final double acPython;
  final double atPython;

  final double acEdFisica;
  final double atEdFisica;
  
  final double mediaLpl;

  final double mediaPit;

  final double mediaMetematica;

  final double mediaHF;

  final double mediaGS;

  final double mediaFisica;

  final double mediaQuimica;
  
  final double mediaBiologia;

  final double mediaArte;

  final double mediaIngles;

  final double mediaDS;

  final double mediaFlutter;

  final double mediaIot;

  final double mediaHandsOn;

  final double mediaPython;
  
  final double mediaEdFisica;

  const tabela({super.key,
    required this.acLpl,
    required this.atLpl,
    required this.acPit,
    required this.atPit,
    required this.acMatematica,
    required this.atMatematica,
    required this.acHF,
    required this.atHF,
    required this.acGS,
    required this.atGS,
    required this.acFisica,
    required this.atFisica,
    required this.acQuimica,
    required this.atQuimica,
    required this.acBiologia,
    required this.atBiologia,
    required this.acArte,
    required this.atArte,
    required this.acIngles,
    required this.atIngles,
    required this.acDS,
    required this.atDS,
    required this.acFlutter,
    required this.atFlutter,
    required this.acIot,
    required this.atIot,
    required this.acHandsOn,
    required this.atHandsOn,
    required this.acPython,
    required this.atPython,
    required this.acEdFisica,
    required this.atEdFisica,
    required this.mediaLpl,
    required this.mediaPit,
    required this.mediaMetematica,
    required this.mediaHF,
    required this.mediaGS,
    required this.mediaFisica,
    required this.mediaQuimica,
    required this.mediaBiologia,
    required this.mediaArte,
    required this.mediaIngles,
    required this.mediaDS,
    required this.mediaFlutter,
    required this.mediaIot,
    required this.mediaHandsOn,
    required this.mediaPython,
    required this.mediaEdFisica,
  });

  @override
  State<tabela> createState() => _tabela();
}

class _tabela extends State<tabela>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            color: Color.fromARGB(255, 213, 155, 210),
            child: DataTable(
              rows: [
                DataRow(cells: [
                  DataCell(Text('LPL')),
                  DataCell(Text('${widget.atLpl}')),
                  DataCell(Text('${widget.acLpl}')),
                  DataCell(Text('${widget.mediaLpl}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('PIT')),
                  DataCell(Text('${widget.atPit}')),
                  DataCell(Text('${widget.acPit}')),
                  DataCell(Text('${widget.mediaPit}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Matematica')),
                  DataCell(Text('${widget.atMatematica}')),
                  DataCell(Text('${widget.acMatematica}')),
                  DataCell(Text('${widget.mediaMetematica}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Historia e Filosofia')),
                  DataCell(Text('${widget.atHF}')),
                  DataCell(Text('${widget.acHF}')),
                  DataCell(Text('${widget.mediaHF}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Geografia e Sociologia')),
                  DataCell(Text('${widget.atGS}')),
                  DataCell(Text('${widget.acGS}')),
                  DataCell(Text('${widget.mediaGS}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fisica')),
                  DataCell(Text('${widget.atFisica}')),
                  DataCell(Text('${widget.acFisica}')),
                  DataCell(Text('${widget.mediaFisica}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Quimica')),
                  DataCell(Text('${widget.atQuimica}')),
                  DataCell(Text('${widget.acQuimica}')),
                  DataCell(Text('${widget.mediaQuimica}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Biologia')),
                  DataCell(Text('${widget.atBiologia}')),
                  DataCell(Text('${widget.acBiologia}')),
                  DataCell(Text('${widget.mediaBiologia}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Arte')),
                  DataCell(Text('${widget.atArte}')),
                  DataCell(Text('${widget.acArte}')),
                  DataCell(Text('${widget.mediaArte}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ingles')),
                  DataCell(Text('${widget.atIngles}')),
                  DataCell(Text('${widget.acIngles}')),
                  DataCell(Text('${widget.mediaIngles}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Design de Software')),
                  DataCell(Text('${widget.atDS}')),
                  DataCell(Text('${widget.acDS}')),
                  DataCell(Text('${widget.mediaDS}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Flutter')),
                  DataCell(Text('${widget.atFlutter}')),
                  DataCell(Text('${widget.acFlutter}')),
                  DataCell(Text('${widget.mediaFlutter}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Iot')),
                  DataCell(Text('${widget.atIot}')),
                  DataCell(Text('${widget.acIot}')),
                  DataCell(Text('${widget.mediaIot}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Hands-on')),
                  DataCell(Text('${widget.atHandsOn}')),
                  DataCell(Text('${widget.acHandsOn}')),
                  DataCell(Text('${widget.mediaHandsOn}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Python')),
                  DataCell(Text('${widget.atPython}')),
                  DataCell(Text('${widget.acPython}')),
                  DataCell(Text('${widget.mediaPython}')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Ed.fisica')),
                  DataCell(Text('${widget.atEdFisica}')),
                  DataCell(Text('${widget.acEdFisica}')),
                  DataCell(Text('${widget.mediaEdFisica}')),
                ]),
              ],
              columns: [
                DataColumn(label: Expanded(child: Text(''))),
                DataColumn(label: Expanded(child: Text('AT'))),
                DataColumn(label: Expanded(child: Text('AC'))),
                DataColumn(label: Expanded(child: Text('Media'))),
              ],
          ),
          )  
        )
      )
    );
  }
}
