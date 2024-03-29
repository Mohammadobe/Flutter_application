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

        body: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Column(
            children: [
              Text('BMW M5 Cs' , style: TextStyle(fontSize: 40)),
              Image.asset('assets/Images/BMW.jpg' , fit: BoxFit.cover),

              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Enter name car',
                  icon: Icon(Icons.search)
                ),
              ),

              Checkbox(
                value: true,
                onChanged: (x) => (),
              ),
         
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.thumb_up,
            color: Colors.green,
            size: 40,
            ),
          onPressed: () => {print('So good')},
          backgroundColor: Colors.red,
        ),

      ),
    );

  }
}

void main(){
  runApp(firstStatelessWidget());
}