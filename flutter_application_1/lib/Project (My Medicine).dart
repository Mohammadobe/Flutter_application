import 'package:flutter/material.dart';
import 'Screens/Project (Info page).dart';
import 'Screens/Project (Registration page).dart';
import 'Screens/Project (Log in page).dart';
import 'Screens/Project (Sign up page).dart';
import 'Screens/Project (Forgot password page).dart';
import 'Screens/Project (Verification code page).dart';

void main(){
  runApp(Medicine());
}

class Medicine extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Project (Info page)': (context) => page2(),
        '/Project (Registration page)': (context) => page3(),
        '/Project (Log in page)': (context) => page4(),
        '/Project (Sign up page)': (context) => page5(),
        '/Project (Forgot password page)': (context) => page6(),
        '/Project (Verification code page)': (context) => page7(),
      },
      home: page1(),
    );
  }

}

class page1 extends StatefulWidget {

  @override
  _page1State createState() =>  _page1State();

}

class _page1State extends State<page1> {

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Container(
        color: Color.fromRGBO(166, 232, 253, 100),
        child: ListView(
          children: [
            Column(
              children: [

                Container(
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Info page)');
                    }, 
                    icon: Icon(Icons.info_outline , size: 30,)
                  ),
                ),
                
                Container(
                  height:270,
                  child: Image.asset('assets/Images/My Medicine.jpeg'),
                ),

                SizedBox(height: 60),

                Container(
                  child: Column(
                    children: [
                      Text('Welcome to the' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),),
                      Text('My Medicines' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25 , color: Colors.blue[800])),
                      Text('application' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                    ],
                  ),
                ),

                SizedBox(height: 60,),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 136, 134, 134),
                        offset: Offset(0, 3),
                        blurRadius: 4
                      )
                    ]
                  ),
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(128, 225, 252, 1)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Registration page)');
                    }, 
                    child: Text('Get Started' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black),),
                  ),
                ),

              ]
            ),
        
          ],
        ),
      ),
    );
    
  }
}