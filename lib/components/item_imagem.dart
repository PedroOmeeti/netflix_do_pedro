import 'package:flutter/material.dart';

class ItemImagem extends StatefulWidget {
  final String imagem;
  const ItemImagem({super.key, required this.imagem});

  @override
  State<ItemImagem> createState() => _ItemImagemState();
}

class _ItemImagemState extends State<ItemImagem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage(widget.imagem)),
          ),
        ),
      ),
    );
  }
}