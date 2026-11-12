import 'package:flutter/material.dart';
import 'package:calculadoranotas/modularizante/datarow.dart';

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

  const tabela({
    super.key,
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

class _tabela extends State<tabela> {
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
                cell('LPL', widget.atLpl, widget.acLpl, widget.mediaLpl),
                cell('PIT', widget.atPit, widget.acPit, widget.mediaPit),
                cell('Matematica', widget.atMatematica, widget.acMatematica, widget.mediaMetematica),
                cell('Historia e Filosofia', widget.atHF, widget.acHF, widget.mediaHF),
                cell('Geografia e Sociologia', widget.atGS, widget.acGS, widget.mediaGS),
                cell('Fisica', widget.atFisica, widget.acFisica, widget.mediaFisica),
                cell('Quimica', widget.atQuimica, widget.acQuimica, widget.mediaQuimica),
                cell('Biologia', widget.atBiologia, widget.acBiologia, widget.mediaBiologia),
                cell('Arte', widget.atArte, widget.acArte, widget.mediaArte),
                cell('Ingles', widget.atIngles, widget.acIngles, widget.mediaIngles),
                cell('Design de Software', widget.atDS, widget.acDS, widget.mediaDS),
                cell('Flutter', widget.atFlutter, widget.acFlutter, widget.mediaFlutter),
                cell('Iot', widget.atIot, widget.acIot, widget.mediaIot),
                cell('Hands-on', widget.atHandsOn, widget.acHandsOn, widget.mediaHandsOn),
                cell('Python', widget.atPython, widget.acPython, widget.mediaPython),
                cell('Ed.fisica', widget.atEdFisica, widget.acEdFisica, widget.mediaEdFisica),
              ],
              columns: [
                DataColumn(label: Expanded(child: Text(''))),
                DataColumn(label: Expanded(child: Text('AT'))),
                DataColumn(label: Expanded(child: Text('AC'))),
                DataColumn(label: Expanded(child: Text('Media'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
