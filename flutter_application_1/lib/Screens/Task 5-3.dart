import 'package:flutter/material.dart';

void main(){
  runApp(page3());
}

class page3 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: PAGE3(),
    );
  }

}

class PAGE3 extends StatefulWidget{

  @override
  _PAGE3State createState() => _PAGE3State();

}

class _PAGE3State extends State<PAGE3>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [

          IconButton(
            icon: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/Images/Mohammad.jpg'),
            ),

            onPressed: (){},
          ),

          IconButton(
            onPressed: (){
              Navigator.popUntil(context, ModalRoute.withName('/'));
            }, 
            
            icon: Icon(Icons.home),
          ),

        ],
        title: Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [

              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Task 5-1');
                }, 
                child: Text('Page 1'),
              ),

              SizedBox(width: 10),
              
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Task 5-2');
                }, 
                child: Text('Page 2'),
              ),

            ],
          ),
          
        ),
      ),

      body: Container(
        color: Colors.green[100],
        child: Center(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset('assets/Images/Mohammad.jpg')
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('First Name: Mohammad' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                  SizedBox(width: 30),
                  Text('Last name: Obeidat' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                ],
              ),
        
              SizedBox(height: 15),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email: mobeidatas26@gmail.com' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                ],
              ),
        
              SizedBox(height: 15),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Address: Irbid - Jordan' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                  SizedBox(width: 30),
                  Text('Birthday: 18/7/2000' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                ],
              )
        
            ],
          ),
        ),
      ),
    );
  }
}