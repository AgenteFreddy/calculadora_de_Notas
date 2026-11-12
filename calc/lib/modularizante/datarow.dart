import 'package:flutter/material.dart';

DataRow cell(String nome, double at, double ac, double media ){
  return DataRow (
    cells: [
      DataCell(Text(nome)),
      DataCell(Text('${at}')),
      DataCell(Text('${ac}')),
      DataCell(Text('${media}'))
    ]
  );
}