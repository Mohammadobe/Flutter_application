import 'package:flutter/material.dart';

class firstStatelessWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context ){

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Icon(Icons.thumb_down)),
        ),

        body: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            children: [
              Column(
                children: [
                  Text('BMW M5 Cs' , style: TextStyle(fontSize: 40)),
                  Image.asset('assets/Images/BMW.jpg' , height: 400,)
                ],
              ),
            
              Container(
                child: Text('gggggggg'),
              ),
            
              Container(
                child: Text('Helloooo' , style: TextStyle(fontSize: 40)),
              ),
            
              Container(
                // Text('BMW M5 Cs' , style: TextStyle(fontSize: 40)),
                child:Image.asset('assets/Images/BMW.jpg' , height: 400,)
              ),
                
            ],
          ),
        ),
      ),
    );

  }
}

void main(){
  runApp(firstStatelessWidget());
}