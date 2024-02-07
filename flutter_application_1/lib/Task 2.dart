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
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                        Spacer(),
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                        Spacer(),
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                        Spacer(),
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                        Spacer(),
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                        Spacer(),
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                        Spacer(),
                        Image.asset('assets/Images/BMW.jpg' , height: 100),
                      ],
                    ),
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