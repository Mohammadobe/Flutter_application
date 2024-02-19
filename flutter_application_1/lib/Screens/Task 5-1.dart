import 'package:flutter/material.dart';

void main(){
  runApp(page1());
}

class page1 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: PAGE1(),
    );
  }

}

class PAGE1 extends StatefulWidget{

  @override
  _PAGE1State createState() => _PAGE1State();

}

class _PAGE1State extends State<PAGE1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
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
                onPressed: (){}, 
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

      body: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          children: [
            Container(
              color: Colors.amber[100],
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset('assets/Images/Sport.jpg' , fit: BoxFit.fill,)
                              ),
                              SizedBox(height: 10),
                              Text('Sports news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                            ],
                          ),

                          SizedBox(width: 40),

                          Column(
                            children: [

                              SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset('assets/Images/Race.jpg' , fit: BoxFit.fill,)
                              ),
                              SizedBox(height: 10),
                              Text('Formula racing news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                            ],
                          ),
                  
                        ],
                      ),
                  
                      SizedBox(height: 30),
                      
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Column(
                              children: [

                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('assets/Images/Shopping.jpg' , fit: BoxFit.fill)
                                ),
                                SizedBox(height: 10),
                                Text('Shopping news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                              ],
                            ),

                            SizedBox(width: 50),

                            Column(
                              children: [

                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('assets/Images/Economical.jpg' , fit: BoxFit.fill)
                                ),
                                SizedBox(height: 10),
                                Text('Economical news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                              ],
                            ),
                                    
                          ],
                        ),
                      ),
            
                      SizedBox(height: 30),
                      
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Row(
                          children: [

                            Column(
                              children: [

                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('assets/Images/Medical.jpg' , fit: BoxFit.fill)
                                ),
                                SizedBox(height: 10),
                                Text('Medical news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                              ],
                            ),

                            SizedBox(width: 50),

                            Column(
                              children: [

                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('assets/Images/Food.png' , fit: BoxFit.fill)
                                ),
                                SizedBox(height: 10),
                                Text('Food news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                              ],
                            ),
                                    
                          ],
                        ),
                      ),
            
                      SizedBox(height: 30),
                      
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Row(
                          children: [

                            Column(
                              children: [

                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('assets/Images/Weather.jpg' , fit: BoxFit.fill)
                                ),
                                SizedBox(height: 10),
                                Text('Weather news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                              ],
                            ),

                            SizedBox(width: 50),

                            Column(
                              children: [

                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset('assets/Images/War.jpg' , fit: BoxFit.fill)
                                ),
                                SizedBox(height: 10),
                                Text('Wars news' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),

                              ],
                            ),
                                    
                          ],
                        ),
                      )
            
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}