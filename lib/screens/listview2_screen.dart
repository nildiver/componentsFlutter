
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const['Megaman','Metal Gear','Super Smash', 'Final Fantasy'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        elevation: 1,
        backgroundColor:Colors.indigo ,
      ),
      body: ListView.builder(
      itemCount:options.length ,
        itemBuilder: (context, index) => ListTile(

       title: Text(options[index]),
       trailing: const Icon(Icons.arrow_forward_ios,color: Colors.indigo,),
       onTap: () {
         final game = options[index];
         print(game);

       },
        ) 

     // separatorBuilder: (BuildContext context , int ) =>const Divider() ,

        
      )
    );
  }
}