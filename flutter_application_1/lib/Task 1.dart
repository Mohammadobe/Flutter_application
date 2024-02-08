import 'package:flutter/material.dart';

void main() {
  runApp(task());
}

class task extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pharmacy'),
                ElevatedButton(onPressed: () {} , child: Text('Button'))
              ],
            ),
          ) , 
        ),
        
        body: Container(
          color: Colors.blue[100],
          child: Center(
            child: Column(
              children: [
                Text('Welcome to our app ^_^'),
                Text('Description: An application for selling and distributing medicines' , textAlign: TextAlign.center),
                
                Image.network(
                  'https://t4.ftcdn.net/jpg/05/11/57/33/360_F_511573386_7OGsN9hPKjcP1QHJG5IyAoBKcaQANHd1.jpg',
                )
              ]
            ),
          ),
        )

      ),
    );

  }
}