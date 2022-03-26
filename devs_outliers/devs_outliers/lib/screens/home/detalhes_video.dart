import 'package:flutter/material.dart';

class DetalhesVideo extends StatefulWidget {
  const DetalhesVideo({ Key? key }) : super(key: key);

  @override
  State<DetalhesVideo> createState() => _DetalhesVideoState();
}

class _DetalhesVideoState extends State<DetalhesVideo> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Videoaula", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff80858C), fontSize: 21)), backgroundColor: Colors.white, elevation: 2, leading: Icon(Icons.arrow_back, size: 24, color: Color(0xff80858C),)),
      body: SingleChildScrollView(
        child: Container(
           width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          child: Column(children: [imagemCapa(context), 
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Orientação a objeto", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff80858C), fontSize: 18),), Row(children: [Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star, size: 24, color: Colors.yellow,), SizedBox(width: 8,), Icon(Icons.star_border_outlined, size: 24, color: Colors.yellow,)],)],),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Text("Por: ", style: TextStyle(fontWeight: FontWeight.w400, color: Color(0xff80858C), fontSize: 15),), Text("Prof. Dr. Karlos Amorim Freitas", style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff80858C), fontSize: 15),)],),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Text("Instituição: ", style: TextStyle(fontWeight: FontWeight.w400, color: Color(0xff80858C), fontSize: 15),), Text("UFG", style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff80858C), fontSize: 15),)],),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Resumo", style: TextStyle(fontWeight: FontWeight.w400, color: Color(0xff80858C), fontSize: 15),), SizedBox(height: 24,), Text("Lorem ipsum dolor sit ametbulumslus mus. Ut gravida dapibus sem, porta gravida diam maximus gravida. Sed ornare, metus sed pretium congue, lectus tellus dignissim odio, vitae pellenteslentesque vel placerat felis, vitae cursus erat. Donec ut mauris et quam sagittis suscipit. massa.", style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff80858C), fontSize: 15),)],),
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
        onTap: () {
          Navigator.of(context).pushNamed('/telaPlaylist');
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Center(child: Icon(Icons.play_arrow_outlined, size: 75, color: Colors.white,)),
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor,
            image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdI8VYk6ZSCkCFKWXHxtNgxtyHhtIQRbXxqw&usqp=CAU"), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }}