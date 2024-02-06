import 'package:flutter/material.dart';

class task2 extends StatelessWidget{

  @override
  Widget build(BuildContext context ){

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Icon(Icons.thumb_up)),
        ),

        body: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            children: [
              Column(
                children: [
                  Text('BMW M5 Cs' , style: TextStyle(fontSize: 40)),
                  //Image.asset('assets/images/BMW.jpg' , height: 400,)
                ],
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                    ],
                  ),

                  Row(
                    children: [
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                    ],
                  ),

                  Row(
                    children: [
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                    ],
                  ),

                  Row(
                    children: [
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                    ],
                  ),

                  Row(
                    children: [
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                    ],
                  ),

                  Row(
                    children: [
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                      Image.asset('assets/images/BMW.jpg' , height: 200),
                    ],
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );

  }
}

void main(){
  runApp(task2());
}