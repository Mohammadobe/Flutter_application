import 'package:flutter/material.dart';
import 'Screens/Form.dart';
import 'Screens/Mario.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Mario': (context) =>  changeDirections(),
        '/Form': (context) => FormPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
      ),
    );
  }

}

class  MyHomePage extends StatefulWidget {

  final  String routeName = '/';
  
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class  _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Flutter Demo Home Page')),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context){
                  //     return myApp();
                  //   }
                  //   ),
                  // );
              
                  Navigator.pushNamed(context, '/Mario');
                },
                child: Text('Go to mario page' , style: 
                TextStyle(
                  fontSize: 18,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Form');
                },
                child: Text('Go to form page' , style: 
                TextStyle(
                  fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}