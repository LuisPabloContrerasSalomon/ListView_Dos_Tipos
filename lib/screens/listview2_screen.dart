import 'package:flutter/material.dart';

var gamess = ["God of War", "Pou", "Fornite", "COD", "Mortal Kombat"];

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
            //Obtener el tamaño de la lista
            itemCount: gamess.length,

            //Creamos Un constructor de cada lista
            itemBuilder: (context, index) => ListTile(

              //Asignamos el titulo apartir de la lista 
              title: Text(gamess[index]),

              //Asignamos el icono de cada elemento
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
              onTap: (){
                var selection=gamess[index];
                print(selection);
              }
              ),
              separatorBuilder:(_,__)=>Divider(),
          ),
    );
  }
}
