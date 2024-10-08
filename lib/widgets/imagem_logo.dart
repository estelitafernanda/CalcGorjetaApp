import 'package:flutter/material.dart';

class ImagemLogo extends StatelessWidget {
  const ImagemLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}