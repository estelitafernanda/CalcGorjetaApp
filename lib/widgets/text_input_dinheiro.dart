import 'package:flutter/material.dart';

class TextInputDinheiro extends StatelessWidget {

  final TextEditingController controller;
  final Function(String)? calcula;
  const TextInputDinheiro({ super.key, required this.controller, required this.calcula});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        onChanged: calcula,
        decoration: InputDecoration(
          hintText: "Digite o valor da sua conta",
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(
            Icons.monetization_on_outlined,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2, color: Colors.grey.shade800,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}