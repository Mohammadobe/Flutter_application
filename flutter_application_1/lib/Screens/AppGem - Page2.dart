import 'package:flutter/material.dart';

void main(){
  runApp(appGemPage2());
}

class appGemPage2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: appPage2(),
    );
  }

}

class appPage2 extends StatefulWidget{

  @override
  _appPage2State createState() => _appPage2State();

}

class _appPage2State extends State<appPage2>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Sign up'),
            Text('Log in'),
          ],
        ),
      ),
    );
  }
}