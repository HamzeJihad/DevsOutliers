import 'package:flutter/material.dart';

class DetalhesArtigo extends StatefulWidget {
  const DetalhesArtigo({ Key? key }) : super(key: key);

  @override
  State<DetalhesArtigo> createState() => _DetalhesArtigoState();
}

class _DetalhesArtigoState extends State<DetalhesArtigo> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(actions: [Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(Icons.download, size: 24, color: Color(0xff80858C),),
      )], centerTitle: true, title: Text("Artigo", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff80858C), fontSize: 21)), backgroundColor: Colors.white, elevation: 2, leading: Icon(Icons.arrow_back, size: 24, color: Color(0xff80858C),)),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
           width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          child: Column(children: [imagemCapa(context), 
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Orientação a objeto", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff80858C), fontSize: 18),), Row(children: [Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star_half, size: 24, color: Colors.yellow,)],)],),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Text("Por: ", style: TextStyle(fontWeight: FontWeight.w400, color: Color(0xff80858C), fontSize: 15),), Text("Matheus G. de Melo", style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff80858C), fontSize: 15),)],),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Text("Instituição: ", style: TextStyle(fontWeight: FontWeight.w400, color: Color(0xff80858C), fontSize: 15),), Text("UFG", style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff80858C), fontSize: 15),)],),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Resumo", style: TextStyle(fontWeight: FontWeight.w400, color: Color(0xff80858C), 
              fontSize: 15),), SizedBox(height: 24,),
               Text("Programação orientada a objetos é um paradigma de programação baseado no conceito de 'objetos', que podem conter dados na forma de campos, também conhecidos como atributos, e códigos, na forma de procedimentos, também conhecidos como métodos", style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff80858C), fontSize: 15),)],),
            ),
          ],),
        ),
      )
    );
  }

  
Hero imagemCapa(BuildContext context) {
    return Hero(
      tag: "123",
      child: GestureDetector(
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor,
            image: DecorationImage(image: NetworkImage("https://images.educamaisbrasil.com.br/content/banco_de_imagens/eb-educacao/D/pre-textuais-artigo-cientifico.JPG"), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}