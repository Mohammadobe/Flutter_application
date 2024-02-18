import 'package:flutter/material.dart';

void main() => runApp(marioPage());

class marioPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: changeDirections()
    );

  }
}

class changeDirections  extends StatefulWidget {

  @override
  _changeDirectionState createState() => _changeDirectionState();

}

class _changeDirectionState extends State<changeDirections> {

  String image1 = 'assets/Images/Mario.png';
  double posRight = 0;
  double posLeft = 0;
  double posUp = 460;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("Change Direction")
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          image: Image.asset('assets/Images/Mario World.jpg').image,
          fit: BoxFit.cover)
        ),
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
          
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          image1 = 'assets/Images/Mario Up.png';
                          if(posUp > 10){
                            posUp -= 20;
                          }
                        });
                      },
                      child: Text('Up')
                    ),
          
                    SizedBox(width: 20),
                    
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          image1 = 'assets/Images/Mario Down.png';
                          if(posUp < 530){
                            posUp += 20;
                          }
                        });
                      },
                      child: Text('Down')
                    ),
          
                    SizedBox(width: 20),

                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          image1 = 'assets/Images/Mario Right.png';
                          if(posRight > 0){
                          posRight -= 20;
                          }

                          if(posRight == 0 && posLeft <= 320){
                            posLeft += 20;
                          }
                          
                        });
                      }, 
                      child: Text('Right')
                    ),
          
                    SizedBox(width: 20),
          
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          image1 = 'assets/Images/Mario Left.png';
                          if(posRight < 330 && posLeft >= 0){
                            posRight += 20;
                            posLeft -= 20;
                          }
                        });
                      },
                      child: Text('Left')
                    ),

                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: posUp , right: posRight , left: posLeft),
                  child: Image.asset(image1 , height: 180 ,  width: 70),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}