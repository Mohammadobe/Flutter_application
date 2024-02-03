import 'package:flutter/material.dart';

class firstStatelessWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context ){

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Icon(Icons.thumb_down),
        ),

        body: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text('First stateless'),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () => {},
        ),

      ),
    );

  }
}