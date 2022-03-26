import 'package:devs_outliers/controller/filter_chip.dart';
import 'package:devs_outliers/screens/home/detalhes_tela.dart';
import 'package:devs_outliers/screens/util/search_util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  String pesquisa = '';

  List<FilterChipClass> listaFiltros = [
    FilterChipClass(selecionado: true, titulo: "Todos", enumerador: "Todos"),
    FilterChipClass(selecionado: false, titulo: "Matemática", enumerador:  "Matemática"),
    FilterChipClass(selecionado: false, titulo: "Programação", enumerador: "Programação"),
    FilterChipClass(selecionado: false, titulo: "Arquitetura", enumerador:  "Arquitetura"),
  ];
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
                Text('Buscar', style: TextStyle(color: Colors.white, fontSize: 22),),
                SizedBox(height: 16,),
                      

                 
                     TextFormField(
                      
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Pesquise um conteúdo",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(18.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(18.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(18.0)))),
                  
                SizedBox(height: 32),

             Row(
               children: [
                    Container(
                  width: 80,
                  height: 40,
                  child: Container(
                    decoration: new BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)
                  ),

                  
                    child: Center(child: Text('Todos', style: TextStyle(color: Colors.white),)),
                  )
                ),
                SizedBox(width: 12,),
                   Container(
                  width: 120,
                  height: 40,
                  child: Container(
                    decoration: new BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8)
                  ),

                  
                    child: Center(child: Text('Matemática', style: TextStyle(color: Colors.white),)),
                  )
                ),
                   SizedBox(width: 12,),
                   Container(
                  width: 120,
                  height: 40,
                  child: Container(
                    decoration: new BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8)
                  ),

                  
                    child: Center(child: Text('Arquitetura', style: TextStyle(color: Colors.white),)),
                  )
                ),
                  
               ],
             ),


             SizedBox(height: 32,),
                     Text('Matemática',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child: Image.asset('assets/images/calculo1.jpg',width: 180,)),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Cálculo 1',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 Stack(
               children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child: Image.asset('assets/images/calculo1.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Cálculo 2',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                          ],
                        
                      ),
                    
                SizedBox(height: 32),
                     Text('Programação',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:  Image.asset('assets/images/programacao_intermediaria.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Intermediária',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesTela()));
                   },
                   child: Stack(
               children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                     child: Image.asset('assets/images/programacao_intermediaria.jpg',width: 180,),),
                   Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Text('Orientação a\nobjeto',style: TextStyle(color: Colors.white, fontSize: 18),),
                   ),
               ],
             ),
                 ),
                          ],
                        
                      ),
                    



                    SizedBox(height: 32),
                     Text('Frameworks',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
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
                   child: Text('Flutter',style: TextStyle(color: Colors.white, fontSize: 18),),
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
                   child: Text('React',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                          ],
                        
                      ),


                      SizedBox(height: 32),
                     Text('Arquitetura de computadores',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(height: 16),
                Row(
                          children: [
                   
             Stack(
               children: [
              ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:     Image.asset('assets/images/arquitetura.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Processamento',style: TextStyle(color: Colors.white, fontSize: 18),),
                 ),
               ],
             ),
                 SizedBox(width: 16,),
                 Stack(
               children: [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                   child:  Image.asset('assets/images/arquitetura.jpg',width: 180,),),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text('Armazenamento',style: TextStyle(color: Colors.white, fontSize: 18),),
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