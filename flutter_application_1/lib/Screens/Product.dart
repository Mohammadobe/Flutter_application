import 'package:flutter/material.dart';

void main(){
  runApp(product());
}

class  product extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : appPage11(),
    );
  }

}

class appPage11 extends StatefulWidget{

  @override
  _appPage11State createState() => _appPage11State();

}

class _appPage11State extends State<appPage11> {

  var favoriteColor = Color.fromARGB(255, 209, 206, 206);
  var sizeColor1 = Color.fromRGBO(250, 250, 250, 1);
  Color textColor1 = Colors.grey;
  var sizeColor2 = Color.fromRGBO(250, 250, 250, 1);
  Color textColor2 = Colors.grey;
  var sizeColor3 = Color.fromRGBO(250, 250, 250, 1);
  Color textColor3 = Colors.grey;
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context){

    return Scaffold(

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(23),
          topLeft: Radius.circular(23),
        ),
        child: Container(
          height: 65,
          child: BottomAppBar(
            color: Color.fromRGBO(52, 52, 52, 1),
            child: Container(
              margin: EdgeInsets.only(left: 95),
              child: Row(
                children: [
              
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.shopping_bag , color: Colors.white , size: 28,),
                  ),
              
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    child: Text('Add To Cart' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),)
                  ),
              
                ],
              ),
            ),
          ),
        ),
      ),

      body: ListView(
        children: [

          Column(
            children: [

              Container(
                color: Color.fromRGBO(255, 252, 250, 1),
                child: Stack(
                  children: [
                
                    Container(
                      margin: EdgeInsets.only(left: 100 , top: 70),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Color.fromRGBO(234, 202, 183, 0.2),
                      ),
                    ),
                
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset('assets/Images/image 31.png' , height: 330 , width: 400,),
                    ),
                
                    Container(
                      margin: EdgeInsets.only(left: 25 , top: 25.3),
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
                        height: 33,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){},
                            icon: Container(
                              margin: EdgeInsets.only(right: 1.3),
                              child: Icon(Icons.arrow_back_ios_rounded , color: Colors.black , size: 18,)
                            ),
                          ),
                        ),
                      ),
                    ),
                
                    Container(
                      margin: EdgeInsets.only(left: 330 , top: 25),
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
                                  if (favoriteColor == Color.fromARGB(255, 209, 206, 206)) {
                                    favoriteColor = Colors.red;
                                  } 
                                  else {
                                    favoriteColor =  Color.fromARGB(255, 209, 206, 206);
                                  } 
                                });
                              },
                              icon: Icon(Icons.favorite , size: 20 , color: favoriteColor,),
                            ),
                          ),
                        ),
                      ),
                    ),
                
                  ],
                ),
              ),

              Stack(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 206, 204, 204),
                          blurRadius: 3,
                        ),
                      ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(22),
                        topLeft: Radius.circular(22),
                      ),
                      child: Container(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        height: 1550,
                      ),
                    ),
                  ),

                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 40 , left: 30),
                          child: Row(
                            children: [
                              Text('Sportwear Set' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: Text('\$ 80.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)
                              ),
                            ],
                          ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 27 , top: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                            SizedBox(width: 4),
                            Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                            SizedBox(width: 4),
                            Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                            SizedBox(width: 4),
                            Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                            SizedBox(width: 4),
                            Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                            SizedBox(width: 4),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              child: Text('(83)' , style: TextStyle(fontSize: 10),)
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 0),
                        width: 340,
                        child: Divider(
                          thickness: 0.5,
                          height: 40,
                          color: Color.fromARGB(255, 221, 219, 219),
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text('Color')
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 190),
                              child: Text('Size')
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 8),

                      Container(
                        child: Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 36),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Color.fromRGBO(231, 192, 167, 1),
                                  ),
                                  SizedBox(width: 8),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.black
                                  ),
                                  SizedBox(width: 8),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Color.fromRGBO(238, 105, 105, 1),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 120),
                              child: Row(
                                children: [

                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (sizeColor1 == Color.fromRGBO(250, 250, 250, 1)) {
                                            sizeColor1 = Color.fromRGBO(81, 81, 81, 1);
                                            textColor1 = Colors.white;
                                          } 
                                          else {
                                            sizeColor1 = Color.fromRGBO(250, 250, 250, 1);
                                            textColor1 = Colors.grey;
                                          } 
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: sizeColor1,
                                        child: Text('S' , style: TextStyle(fontSize: 14 , color: textColor1),)
                                      )
                                    ),
                                  ),

                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (sizeColor2 == Color.fromRGBO(250, 250, 250, 1)) {
                                            sizeColor2 = Color.fromRGBO(81, 81, 81, 1);
                                            textColor2 = Colors.white;
                                          } 
                                          else {
                                            sizeColor2 = Color.fromRGBO(250, 250, 250, 1);
                                            textColor2 = Colors.grey;
                                          } 
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: sizeColor2,
                                        child: Text('M' , style: TextStyle(fontSize: 14 , color: textColor2),)
                                      )
                                    ),
                                  ),

                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (sizeColor3 == Color.fromRGBO(250, 250, 250, 1)) {
                                            sizeColor3 = Color.fromRGBO(81, 81, 81, 1);
                                            textColor3 = Colors.white;
                                          } 
                                          else {
                                            sizeColor3 = Color.fromRGBO(250, 250, 250, 1);
                                            textColor3 = Colors.grey;
                                          } 
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: sizeColor3,
                                        child: Text('L' , style: TextStyle(fontSize: 14 , color: textColor3),)
                                      )
                                    ),
                                  ),
                              
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 10),

                      Container(
                        margin: EdgeInsets.only(left: 0),
                        width: 340,
                        child: Divider(
                          thickness: 0.5,
                          height: 40,
                          color: Color.fromARGB(255, 221, 219, 219),
                        ),
                      ),

                      Container(
                        width: 372,
                        margin: EdgeInsets.only(left: 8),
                        child: ExpansionTile(
                          title: Text('Description' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Text('Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.'),
                            )
                          ],
                          onExpansionChanged: (bool expanded) {
                            setState(() {
                              _customTileExpanded = expanded;
                            });
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 0),
                        width: 340,
                        child: Divider(
                          thickness: 0.5,
                          height: 40,
                          color: Color.fromARGB(255, 221, 219, 219),
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [

                            Container(
                              width: 372,
                              margin: EdgeInsets.only(left: 8),
                              child: ExpansionTile(
                                title: Text('Reviews' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                trailing: Icon(
                                  _customTileExpanded
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_right
                                ),
                                children: [
                                  ListTile(
                                    title: Column(
                                      children: [

                                        Row(
                                          children: [
                                        
                                            Container(
                                              child: Text('4.9' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 33),)
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 8),
                                              child: Text('OUT OF 5' , style: TextStyle(fontSize: 12))
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 90),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 26,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 26,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 26,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 26,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 26,),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 60),
                                                    child: Text('83 ratings' , style: TextStyle(fontSize: 13 , color: Colors.grey),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            
                                          ],
                                        ),

                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text('5')
                                              ),
                                              SizedBox(width: 5,),
                                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                                              Stack(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 240,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(239, 240, 241, 1),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 200,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(80, 138, 123, 1),
                                                    ),
                                                  ),
                                                ]
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text('80%' , style: TextStyle(fontSize: 15),),
                                              ),

                                            ],
                                          ),
                                        ),

                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text('4')
                                              ),
                                              SizedBox(width: 5,),
                                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                                              Stack(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 240,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(239, 240, 241, 1),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 55,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(80, 138, 123, 1),
                                                    ),
                                                  ),
                                                ]
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text('12%' , style: TextStyle(fontSize: 15),),
                                              ),

                                            ],
                                          ),
                                        ),

                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text('3')
                                              ),
                                              SizedBox(width: 5,),
                                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                                              Stack(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 240,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(239, 240, 241, 1),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 30,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(80, 138, 123, 1),
                                                    ),
                                                  ),
                                                ]
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text('5%' , style: TextStyle(fontSize: 15),),
                                              ),

                                            ],
                                          ),
                                        ),

                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text('2')
                                              ),
                                              SizedBox(width: 5,),
                                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                                              Stack(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 240,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(239, 240, 241, 1),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 10 , top: 1),
                                                    width: 20,
                                                    child: Divider(
                                                      thickness: 4,
                                                      height: 40,
                                                      color: Color.fromRGBO(80, 138, 123, 1),
                                                    ),
                                                  ),
                                                ]
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text('3%' , style: TextStyle(fontSize: 15),),
                                              ),

                                            ],
                                          ),
                                        ),

                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text('1')
                                              ),
                                              SizedBox(width: 5,),
                                              Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 22,),
                                              Container(
                                                margin: EdgeInsets.only(left: 10 , top: 1),
                                                width: 240,
                                                child: Divider(
                                                  thickness: 4,
                                                  height: 40,
                                                  color: Color.fromRGBO(239, 240, 241, 1),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text('0%' , style: TextStyle(fontSize: 15),),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(top: 15),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text('47 Reviews' , style: TextStyle(color: Colors.grey , fontSize: 14),),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 119),
                                                child: Text('WRITE A REVIEW' , style: TextStyle(color: Colors.grey , fontSize: 14)),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 5),
                                                child: Icon(Icons.edit , color: Colors.grey , size: 18),
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(height: 40),

                                        Row(
                                          children: [

                                            Container(
                                              alignment: Alignment.bottomLeft,
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/Images/image 32.png'),
                                              ),
                                            ),

                                            Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 14),
                                                  child: Text('Jennifer Rose' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                                                ),

                                                SizedBox(height: 5,),

                                                Container(
                                                  margin: EdgeInsets.only(right: 8),
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                    ],
                                                  ),
                                                ),
                                                
                                              ],
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(left: 113),
                                              child: Text('5m ago' , style: TextStyle(color: Colors.grey , fontSize: 14),),
                                            ),

                                          ],
                                        ),

                                        SizedBox(height: 20,),

                                        Container(
                                          child: Text('I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!' , style: TextStyle(fontSize: 13),),
                                        ),

                                        SizedBox(height: 30,),

                                        Row(
                                          children: [

                                            Container(
                                              alignment: Alignment.bottomLeft,
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/Images/image 33.png'),
                                              ),
                                            ),

                                            Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 14),
                                                  child: Text('Kelly Rihana' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                                                ),

                                                SizedBox(height: 5,),

                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                      Icon(Icons.star , color: Color.fromRGBO(80, 138, 123, 1) , size: 18,),
                                                    ],
                                                  ),
                                                ),
                                                
                                              ],
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(left: 125),
                                              child: Text('9m ago' , style: TextStyle(color: Colors.grey , fontSize: 14),),
                                            ),

                                          ],
                                        ),

                                        SizedBox(height: 20,),

                                        Container(
                                          child: Text("I'm very happy with order, It was delivered on and good quality. Recommended!" , style: TextStyle(fontSize: 13),),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(() {
                                    _customTileExpanded = expanded;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [

                            Container(
                              width: 372,
                              margin: EdgeInsets.only(left: 8),
                              child: ExpansionTile(
                                title: Text('Similar Product' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                trailing: Icon(
                                  _customTileExpanded
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_right
                                ),
                                children: [
                                  ListTile(
                                    title: Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: 400,
                                      height: 235,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                                
                                          Container(
                                            width: 133,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(22),
                                                  child: Container(
                                                    child: Image.asset('assets/Images/image 34.png' , height: 180),
                                                  ),
                                                ),
                                                SizedBox(height: 6),
                                                Text('Rise Crop Hoodie' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 11)),
                                                Text('\$ 43.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17)),
                                              ],
                                            ),
                                          ),

                                          SizedBox(width: 15),
                                                
                                          Container(
                                            width: 133,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(22),
                                                  child: Container(
                                                    child: Image.asset('assets/Images/image 35.png' , height: 180),
                                                  ),
                                                ),
                                                SizedBox(height: 6),
                                                Text('Gym Crop Top' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 11)),
                                                Text('\$ 39.99' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17)),
                                              ],
                                            ),
                                          ),

                                          SizedBox(width: 15),
                                                
                                          Container(
                                            margin: EdgeInsets.only(top: 2),
                                            width: 133,
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(12),
                                                  child: Container(
                                                    color: Color.fromARGB(255, 243, 241, 241),
                                                    child: Image.asset('assets/Images/image 7.png' , height: 175 , width: 125,),
                                                  ),
                                                ),
                                                SizedBox(height: 9),
                                                Text('Sportwear Set' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 11)),
                                                Text('\$ 80.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17)),
                                              ],
                                            ),
                                          ),
                                                
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(() {
                                    _customTileExpanded = expanded;
                                  });
                                },
                              )
                            )
                          ]
                        )
                      ),
                      
                    ],
                  ),
                  
                ]
              ),

            ],
          ),
          
        ],
      ),
    );

  }
}