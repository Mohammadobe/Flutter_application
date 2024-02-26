import 'package:flutter/material.dart';
import 'Screens/AppGem - Page1.dart';
import 'Screens/AppGem - Page2.dart';

void main(){
  runApp(appGem());
}

class appGem  extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/AppGem - Page1': (context) => appPage1(),
        '/AppGem - Page2': (context) => appPage2(),
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
              image: Image.asset('assets/Images/GemStore background.jpg').image,
              fit: BoxFit.cover
              ),
            ),
          ),

          Opacity(
            opacity: 0.5,
            child: Container(
              color: Colors.black,
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 350),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome to GemStore!' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white)),
                      SizedBox(height: 10),
                      Text('The home for a fashionista' , style: TextStyle(fontSize: 18 , color: Colors.white)),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 180,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.withOpacity(0.8),
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, '/AppGem - Page1');
                          }, 
                          child: Text('Get Started' , style: TextStyle(color: Colors.white , fontSize: 20),)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),      
    );
  }
}