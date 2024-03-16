import 'package:flutter/material.dart';
import 'Screens/Intro.dart';
import 'Screens/Sign Up.dart';
import 'Screens/Log In.dart';
import 'Screens/Forgot password.dart';
import 'Screens/Verification code.dart';
import 'Screens/Create new password.dart';
import 'Screens/Home.dart';
import 'Screens/Search.dart';


void main(){
  runApp(appGem());
}

class appGem  extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Intro': (context) => appPage2(),
        '/Sign Up': (context) => appPage3(),
        '/Log In': (context) => appPage4(),
        '/Forgot password': (context) => appPage5(),
        '/Verification code': (context) => appPage6(),
        '/Create new password': (context) => appPage7(),
        '/Home': (context) => appPage8(),
        '/Search': (context) => appPage9(),
      },
      home : AppGemStore(),
    );
  }

}

class AppGemStore  extends StatefulWidget{

  @override
  _AppGemState createState() => _AppGemState();

}

class _AppGemState extends State<AppGemStore>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
              image: Image.asset('assets/Images/GemStore background.png').image,
              fit: BoxFit.cover
              ),
            ),
          ),

          Opacity(
            opacity: 0.5,
            child: Container(
              color: Colors.black,
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 430),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to GemStore!' , style: TextStyle(fontSize: 27 , fontWeight: FontWeight.w700 , color: Colors.white)),
                  SizedBox(height: 13),
                  Text('The home for a fashionista' , style: TextStyle(fontSize: 18 , color: Colors.white)),
                  SizedBox(height: 70),
                  SizedBox(
                    width: 210,
                    height: 60,
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Color.fromARGB(255, 122, 120, 120).withOpacity(0.96),
                       side: BorderSide(color: Colors.white , width: 1.2)
                     ),
                     onPressed: (){
                       Navigator.pushNamed(context, '/Intro');
                     }, 
                      child: Text('Get Started' , style: TextStyle(color: Colors.white , fontSize: 19 , fontWeight: FontWeight.w700),)
                    ),
                  ),

                ],
              ),
            ),
          ),
          
        ],
      ),      
    );
  }
}