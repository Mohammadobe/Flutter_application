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

  Color _color  = Colors.amber;
  Color _newColor = Colors.red;
  
  String dropdownvalue = 'Red';
  var items = [
    'Red',
    'Blue',
    'Green',
  ];

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _newColor,
        title: Center(
          child: Text("Color Changer")
        ),
      ),

      body: Container(
        color: _color,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        setState(() {
                          _color = Colors.red;
                          _newColor = Colors.amber;
                        });
                      },
                      child: Text('Red'),
                    ),

                    SizedBox(width: 20),
          
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: () {
                        setState(() {
                          _color = Colors.blue;
                          _newColor = Colors.red;
                        });
                      },
                      child: Text('Blue'),
                    ),

                    SizedBox(width: 20),
          
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        setState(() {
                          _color  = Colors.green;
                          _newColor = Colors.blue; 
                        });
                      },
                      child: Text('Green'),
                    ),
          
                  ],
                ),

                DropdownButton(
                  focusColor: Colors.white,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // map => for loop for a list
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;

                      if (dropdownvalue == 'Red'){
                        _color = Colors.red;
                        _newColor = Colors.amber;
                      }

                      else if (dropdownvalue == 'Blue'){
                        _color = Colors.blue;
                        _newColor = Colors.red;
                      }
                      
                      else if (dropdownvalue == 'Green'){
                        _color = Colors.green;
                        _newColor = Colors.blue;
                      }
                        
                    });
                  },
                ),
            
              ]  
            ),
          ),
        ),
      ),
    );
  }
}