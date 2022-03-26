import 'package:devs_outliers/screens/home/detalhes_artigo.dart';
import 'package:devs_outliers/screens/home/detalhes_video.dart';
import 'package:flutter/material.dart';

class DetalhesTela extends StatefulWidget {
  const DetalhesTela({ Key? key }) : super(key: key);

  @override
  State<DetalhesTela> createState() => _DetalhesTelaState();
}

class _DetalhesTelaState extends State<DetalhesTela> {
 @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar:null,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 55),
                Text('Orientação a objeto', style: TextStyle(color: Colors.white, fontSize: 22),),
                SizedBox(height: 16,),
                      

                 
              
             SizedBox(height: 32,),
           
                     Text('O que é orientação a objeto?',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
                 GestureDetector(
                   onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> DetalhesArtigo()));
                   },
                   child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                     child: Image.asset('assets/images/programacaousar2.jpg',width: 180,)),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Artigo',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 Stack(
               children: [
                  GestureDetector(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> DetalhesVideo()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                     child: Image.asset('assets/images/programacaousar2.jpg',width: 180,),),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Vídeo-aula',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                          ],
                        
                      ),
                    
                SizedBox(height: 32),
                     Text('Polimorfismo',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:  Image.asset('assets/images/programacaousar3.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Artigo',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 GestureDetector(
                   onTap: (){
                   },
                   child: Stack(
               children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                     child: Image.asset('assets/images/programacaousar3.jpg',width: 180,),),
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Text('Vídeo-aula',style: TextStyle(color: Colors.white, fontSize: 18),),
                   ),
               ],
             ),
                 ),
                          ],
                        
                      ),
                    



                    SizedBox(height: 32),
                     Text('Herança',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
              ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:     Image.asset('assets/images/programacao_orientada.jpeg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Artigo',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 Stack(
               children: [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:  Image.asset('assets/images/programacao_orientada.jpeg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Vídeo-aula',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                          ],
                        
                      ),


                      SizedBox(height: 32),
                     Text('Vídeo-aula',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
              ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:     Image.asset('assets/images/programacaousar.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Artigo',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 Stack(
               children: [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:  Image.asset('assets/images/programacaousar.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Vídeo-aula',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                          ],
                        
                      ),
                    
                
                ]  ),
          ),
        ),
    )
        
      
      
    );
  }
}