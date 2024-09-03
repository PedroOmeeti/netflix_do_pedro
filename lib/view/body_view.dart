import 'package:flutter/material.dart';
import 'package:netflix_paraguai/components/espacamento_h.dart';
import 'package:netflix_paraguai/components/item_imagem.dart';
import 'package:netflix_paraguai/components/titulo1.dart';

class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: const Text('NETFLIX DO PEDRO',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Titulo1(texto: 'Popular on Netflix', tamanho: 20),
              
          
              EspacamentoH(h: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemImagem(imagem: 'assets/images/filme1.jpg'),
                    ItemImagem(imagem: 'assets/images/filme2.jpg'),
                    ItemImagem(imagem: 'assets/images/filme3.jpg'),
                    ItemImagem(imagem: 'assets/images/filme4.jpg'),
                    ItemImagem(imagem: 'assets/images/filme5.jpg'),
                  ],
                ),
              ),
              EspacamentoH(h: 12),
          
              Titulo1(texto: 'Trending Now', tamanho: 20),
          
              EspacamentoH(h: 12),
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemImagem(imagem: 'assets/images/filme6.jpg'),
                    ItemImagem(imagem: 'assets/images/filme7.jpg'),
                    ItemImagem(imagem: 'assets/images/filme8.jpg'),
                    ItemImagem(imagem: 'assets/images/filme9.jpg'),
                    ItemImagem(imagem: 'assets/images/filme10.jpg'),
                  ],
                ),
              ),
              EspacamentoH(h: 12),
          
              Titulo1(texto: 'New Releases', tamanho: 20),
          
              EspacamentoH(h: 12),
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemImagem(imagem: 'assets/images/filme11.jpg'),
                    ItemImagem(imagem: 'assets/images/filme12.jpg'),
                    ItemImagem(imagem: 'assets/images/filme13.jpg'),
                    ItemImagem(imagem: 'assets/images/filme14.jpg'),
                    ItemImagem(imagem: 'assets/images/filme15.jpg'),
                  ],
                ),
              ),
              EspacamentoH(h: 12),
            ],
          ),
        ),

    );
  }
}