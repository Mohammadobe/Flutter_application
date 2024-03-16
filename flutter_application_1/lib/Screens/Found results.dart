import 'package:flutter/material.dart';

void main(){
  runApp(foundResults());
}

class  foundResults extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : appPage10(),
    );
  }

}

class appPage10 extends StatefulWidget{

  @override
  _appPageState createState() => _appPageState();

}

class _appPageState extends State<appPage10> {

  var favoriteColor1 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor2 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor3 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor4 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor5 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor6 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor7 = Color.fromARGB(255, 209, 206, 206);
  var favoriteColor8 = Color.fromARGB(255, 209, 206, 206);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
          
              Container(
                margin: EdgeInsets.only(top:30, left:30),
                child:Row(
                  children: [
          
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black, 
                            offset: Offset(0, 0.3)
                          ),
                        ],
                      ), 
                      child: SizedBox(
                        height: 43,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/Forgot password');
                            },
                            icon: Icon(Icons.arrow_back_ios_rounded , color: Colors.black),
                          ),
                        ),
                      ),
                    ),
          
                    Container(
                      margin: EdgeInsets.only(left:25),
                      child: Text('Dresses' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold))
                    ),
          
                  ],
                ),
              ),
          
              Container(
                child: Row(
                  children: [
          
                    Container(
                      child: Column(
                        children: [
          
                          Container(
                            margin: EdgeInsets.only(top : 20 , right: 5),
                            child: Text('Found' , style: TextStyle(fontSize: 19 , fontWeight: FontWeight.bold))
                          ),
          
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Text('152 Results' , style: TextStyle(fontSize: 19 , fontWeight: FontWeight.bold))
                          ),
          
                        ],
                      ),
                    ),
          
                    Container(
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1
                          ),
                        ]
                      ),
                      margin: EdgeInsets.only(top: 30 , left: 120),
                      child: Row(
                        children: [
          
                          Container(
                            margin: EdgeInsets.only(left: 21),
                            child: Text('Filter' , style: TextStyle(fontSize: 15))
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                          
                        ],
                      ),
                    ),
          
                  ],
                ),
              ),
          
              Container(
                margin: EdgeInsets.only(top: 30 , left: 37),
                child: Row(
                  children: [
                
                    Column(
                      children: [
                        Stack(
                          children: [
                        
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 23.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor1 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor1 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor1 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor1,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ],
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 60 , top: 15),
                                child: Text('Linen Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Text('\$ 52.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                    Text('\$ 90.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15 , color: Colors.grey)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Text('(64)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                    SizedBox(width: 30),
                
                    Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 24.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor2 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor2 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor2 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ]
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 20 , top: 15),
                                child: Text('Filted Waist Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Text('\$ 47.99' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                    Text('\$ 82.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15 , color: Colors.grey)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Text('(53)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                  ],
                ),
              ),
          
              Container(
                margin: EdgeInsets.only(top: 30 , left: 37),
                child: Row(
                  children: [
                
                    Column(
                      children: [
                        Stack(
                          children: [
                        
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 25.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor3 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor3 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor3 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor3,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ],
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 60 , top: 15),
                                child: Text('Maxi Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 68),
                                child: Row(
                                  children: [
                                    Text('\$ 68.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 25),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star_border , size: 18,),
                              Text('(46)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                    SizedBox(width: 30),
                
                    Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 26.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor4 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor4 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor4 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor4,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ]
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 7 , top: 15),
                                child: Text('Front Tie Mini Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 72),
                                child: Row(
                                  children: [
                                    Text('\$ 59.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star_border , size: 18,),
                              Text('(38)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                  ],
                ),
              ),
          
              Container(
                margin: EdgeInsets.only(top: 30 , left: 37),
                child: Row(
                  children: [
                
                    Column(
                      children: [
                        Stack(
                          children: [
                        
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 27.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor5 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor5 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor5 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor5,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ],
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 60 , top: 15),
                                child: Text('Ohara Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 73),
                                child: Row(
                                  children: [
                                    Text('\$ 85.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star_border , size: 18,),
                              Text('(50)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                    SizedBox(width: 30),
                
                    Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 28.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor6 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor6 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor6 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor6,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ]
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 12 , top: 15),
                                child: Text('Tie Back Mini Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 74),
                                child: Row(
                                  children: [
                                    Text('\$ 67.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Text('(39)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                  ],
                ),
              ),
          
              Container(
                margin: EdgeInsets.only(top: 30 , left: 37),
                child: Row(
                  children: [
                
                    Column(
                      children: [
                        Stack(
                          children: [
                        
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 29.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor7 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor7 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor7 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor7,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ],
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 10 , top: 15),
                                child: Text('Leaves Green Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 74),
                                child: Row(
                                  children: [
                                    Text('\$ 64.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Text('(83)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                    SizedBox(width: 30),
                
                    Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                child: Image.asset('assets/Images/image 30.png'),
                              ),
                            ),
                        
                            Container(
                              margin: EdgeInsets.only(left: 100 , top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
                                  ),
                                ],
                              ), 
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3),
                                child: SizedBox(
                                  height: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if (favoriteColor8 == Color.fromARGB(255, 209, 206, 206)) {
                                            favoriteColor8 = Colors.red;
                                          } 
                                          else {
                                            favoriteColor8 =  Color.fromARGB(255, 209, 206, 206);
                                          } 
                                        });
                                      },
                                      icon: Icon(Icons.favorite , size: 20 , color: favoriteColor8,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        
                          ]
                        ),
          
                        Container(
                          child: Column(
                            children: [
          
                              Container(
                                margin: EdgeInsets.only(right: 18 , top: 15),
                                child: Text('Off Shoulder Dress' , style: TextStyle(fontWeight: FontWeight.bold))
                              ),
          
                              Container(
                                margin: EdgeInsets.only(right: 74),
                                child: Row(
                                  children: [
                                    Text('\$ 78.99' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 28),
                          child: Row(
                            children: [
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                              Icon(Icons.star_border , size: 18,),
                              Text('(25)'),
                            ],
                          ),
                        ),
          
                      ],
                    ),
                
                  ],
                ),
              ),

              SizedBox(height: 10),
          
            ],
          ),
        ],
      ),
    );

  }
}