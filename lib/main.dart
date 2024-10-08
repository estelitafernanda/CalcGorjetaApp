import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/imagem_logo.dart';
import 'package:flutter_application_1/widgets/text_input_dinheiro.dart';
import 'package:flutter_application_1/widgets/text_resultado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldHome(),
    );
  }
}

class ScaffoldHome extends StatelessWidget{
    const ScaffoldHome({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calcula gorjeta",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey.shade400,
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade50,
        body: HomeBody(),
      );
    }
}

class HomeBody extends StatefulWidget{
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late double _resultado;
  late TextEditingController _controller;

  @override
  void initState() {
    _resultado = 0;
    _controller = TextEditingController();
    super.initState();
  }
  void calcula(){
    setState(() {
      _resultado = double.parse(_controller.value.text)*1.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImagemLogo(),
        TextInputDinheiro(controller: _controller, calcula: (value) => calcula(),),
        /*ElevatedButton(
          onPressed: () => null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade600,
            elevation: 5,
          ),
           child: const Text(
            "Calcular",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),*/
        TextResultado(resultado: _resultado),
      ],
    );
  }
}





