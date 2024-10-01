import 'package:flutter/material.dart';

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
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: const DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                "imagens/tip.png",
            ),
          ),
          border: Border.all(
            width: 10,
            color: Colors.black 
            )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            onChanged: (value) => calcula(),
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
        ),
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
        Padding(
          padding: const EdgeInsets.all(20.0),
          child:  Text(
            "R\$ ${_resultado.toStringAsFixed(2)}",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}