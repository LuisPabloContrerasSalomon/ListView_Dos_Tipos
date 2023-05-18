import 'package:flutter/material.dart';

 var games=["God of War", "Pou", "Fornite","COD", "Mortal Kombat"];

class ListView1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
          appBar: AppBar(
            title: Text('ListView Tipo 1'),
          ),
          body: ListView(
                  children: [
                    //spread
                   ...games.map(
                     (games)=>ListTile(
                       title: Text(games),
                       trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff000000)),
                       onTap: (){
                         var selection=games;
                         print(selection);
                       },
                     )

                   ).toList(),
                   const Divider(
                     height:20,
                     thickness:2,
                   indent: 20,
                   endIndent:20,
                   )
                  ],
                
                )
        );
  }
}



