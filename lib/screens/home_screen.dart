import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title:const Text('Componentes en flutter'),
        elevation: 1,
      ),
      body:ListView.separated(
        itemCount: 20,
        itemBuilder: (context,  index)=>ListTile(
          leading: const Icon(Icons.ac_unit_sharp),
          title: const Text('Nombre de la ruta'),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context)=>const Listview1Screen());
            // Navigator.push(context,route);
            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: ( context,  index)=>const Divider()
      ),
    );
  }
}