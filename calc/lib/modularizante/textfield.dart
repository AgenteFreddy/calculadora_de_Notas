import 'package:flutter/material.dart';

Widget textfield(String texto, TextEditingController controller){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color.fromARGB(255, 255, 183, 250),
      border: OutlineInputBorder(),
      labelText: texto,
    ),
  );
}



