import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Container(
              color: Colors.orange,
              child: Text('App Bar' ,
              style: TextStyle(
                color: Colors.white , 
                fontWeight: FontWeight.bold , 
                fontSize: 20),
              ),
            ),
          ),
        ),
        
        body: Center(
          child: Column(
            children: [
              Text('Text 1'),
              Text('Text 2'),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Text 3'),
                  Text('Text 4'),
                  ElevatedButton(onPressed: () {}, child: Text('Button'))
                ],
              )

            ]
          ),
        )

      ),
    );

  }
}