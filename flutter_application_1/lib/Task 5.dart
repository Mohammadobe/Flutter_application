import 'package:flutter/material.dart';
import 'Screens/Task 5-1.dart';
import 'Screens/Task 5-2.dart';
import 'Screens/Task 5-3.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Task 5-1': (context) =>  PAGE1(),
        '/Task 5-2': (context) =>  PAGE2(),
        '/Task 5-3': (context) =>  PAGE3(),
      },
      home : HomePage(),
    );
  }

}

class HomePage extends StatefulWidget{

  final  String routeName = '/';

  @override
  _HomePageState createState() => _HomePageState();

}

class  _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        actions: [

          IconButton(
            icon: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/Images/Mohammad.jpg'),
            ),

            onPressed: (){
              Navigator.pushNamed(context, '/Task 5-3');
            }

          ),

          SizedBox(width: 30),

        ],
        
        title: Container(
          margin: EdgeInsets.only(left: 76),
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

      body: Center(
        child: Column(
          children: [
            Image.asset('assets/Images/Welcome.png' , height: 600),
          ],
        ),
      ),

    );
  }
}