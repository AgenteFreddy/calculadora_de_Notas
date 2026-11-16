import 'package:calculadoranotas/modularizante/textfield.dart';
import 'package:flutter/material.dart';
import 'estruturas/tabela.dart';

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

  final TextEditingController at1controller = TextEditingController();
  final TextEditingController at2controller = TextEditingController();
  final TextEditingController at3controller = TextEditingController();

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

  double mediaAt = 0;

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
    'Ed.fisica',
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
        mediaBiologia =
            (((acBiologia * 3) + (atBiologia * 5) + (agh * 2)) / 10);
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
        mediaEdFisica =
            (((acEdFisica * 3) + (atEdFisica * 5) + (agh * 2)) / 10);
      }
    });
  }

  void calcmat() {
    double at1 = double.tryParse(at1controller.text) ?? 0;
    double at2 = double.tryParse(at2controller.text) ?? 0;
    double at3 = double.tryParse(at3controller.text) ?? 0;

    setState(() {
      mediaAt = (at1 + at2 + at3) / 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Bem Vindos (EM BETA 0.3)'), //hehehehehehehehehehehe
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FastCalc', style: TextStyle(fontSize: 30)),
              Text('Media do trimestre', style: TextStyle(fontSize: 15)),
              SizedBox(height: 10, width: 10),
              textfield('AT', atcontroller),
              SizedBox(height: 10, width: 10),
              textfield('AGH', aghcontroller),
              SizedBox(height: 10, width: 10),
              textfield('AC', accontroller),
              SizedBox(height: 10, width: 10),
              ElevatedButton(onPressed: fastcalc, child: Text('Calcule')),
              SizedBox(width: 10, height: 10),
              Card(
                child: Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: adicionar,
                              child: Text(
                                'Adicionar',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            SizedBox(width: 10, height: 10),
                            Text(
                              'Resultado: $media',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10, height: 10),
                            DropdownButton(
                              value: selecmateria,
                              hint: const Text('Selecione'),
                              items: materias.map((String materia) {
                                return DropdownMenuItem(
                                  value: materia,
                                  child: Text(materia),
                                );
                              }).toList(),
                              onChanged: (String? valor) {
                                setState(() {
                                  selecmateria = valor;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20, height: 20),

              Text('Media Final (ano)', style: TextStyle(fontSize: 15)),
              SizedBox(width: 10, height: 10),
              textfield('AT1', at1controller),
              SizedBox(width: 10, height: 10),
              textfield('AT2', at2controller),
              SizedBox(width: 10, height: 10),
              textfield('AT3', at3controller),
              SizedBox(width: 10, height: 10),
              Text('Media da AT do ano: $mediaAt'),
              SizedBox(width: 10, height: 10),
              ElevatedButton(
                onPressed: calcmat,
                child: Text('Adicionar', style: TextStyle(fontSize: 16)),
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
              SizedBox(width: 20, height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
