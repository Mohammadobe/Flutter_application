import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ColorChange(),
    );

  }
}

class ColorChange extends StatefulWidget{

  @override
  _ColorChangeState createState() => _ColorChangeState();

}

class _ColorChangeState  extends State<ColorChange>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("Color Changer")
        ),
      ),

      body: Container(
        color: Colors.amber,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {},
                    child: Text('Red')
                    ),
                    SizedBox(width: 20),
          
                    ElevatedButton(onPressed: () {},
                    child: Text('Blue')
                    ),
                    SizedBox(width: 20),
          
                    ElevatedButton(onPressed: () {},
                    child: Text('Green')
                    ),
          
                  ],
                )
              ]  
            ),
          ),
        ),
      ),
    );
  }
}