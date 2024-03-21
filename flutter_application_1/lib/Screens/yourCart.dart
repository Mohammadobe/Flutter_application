import 'package:flutter/material.dart';

void main(){
  runApp(Cart());
}

class  Cart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : appPage12(),
    );
  }

}

class appPage12 extends StatefulWidget{

  @override
  _appPage12State createState() => _appPage12State();

}

class _appPage12State extends State<appPage12> {

  var checkColor1 = Color.fromRGBO(80, 138, 123, 1);
  var counter1 = 1;
  var checkColor2 = Color.fromRGBO(80, 138, 123, 1);
  var counter2 = 1;
  var checkColor3 = Color.fromRGBO(80, 138, 123, 1);
  var counter3 = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35 , top: 35),
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
                    margin: EdgeInsets.only(top: 35 , left: 90),
                    child: Text('Your Cart' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(0, 5),
                    )
                  ]
                ),
                margin: EdgeInsets.only(top: 35),
                child: Container(
                  height: 110,
                  width: 350,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 292),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              if(checkColor1 == Color.fromRGBO(142, 142, 142, 1)){
                                checkColor1 = Color.fromRGBO(80, 138, 123, 1);
                              }
                              else{
                                checkColor1 = Color.fromRGBO(142, 142, 142, 1);
                              }
                            });
                          }, 
                          icon: Icon(Icons.check_box_rounded , color: checkColor1 , size: 26,)
                        ),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomLeft: Radius.circular(22)
                            ),
                            child: Container(
                              height: 110,
                              color: Color.fromRGBO(255, 252, 250, 1),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 12 , top: 18),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundColor: Color.fromRGBO(234, 202, 183, 0.2),
                                    ),
                                  ),
                                  Image.asset('assets/Images/image 31.png' , width: 80,)
                                ]
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 47),
                                  child: Text('Sportwear Set' , style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 78 , top: 7),
                                  child: Text('\$ 80.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6 , top: 7),
                                  child: Text('Size: L  |  Color: Cream' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60 , left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Colors.black)
                            ),
                            child: Container(
                              height: 30,
                              width: 80,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 1.5),
                                    width: 33,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if(counter1 >= 1){
                                            counter1--;
                                          }
                                        });
                                      }, 
                                      icon: Icon(Icons.remove , color: Colors.grey , size: 16,)
                                    ),
                                  ),
                                  Container(
                                    child: Text('$counter1' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                                  ),
                                  Container(
                                    width: 33,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          counter1++;
                                        });
                                      }, 
                                      icon: Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.add , color: Colors.grey , size: 16,)
                                      )
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ]
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(0, 5),
                    )
                  ]
                ),
                margin: EdgeInsets.only(top: 30),
                child: Container(
                  height: 110,
                  width: 350,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 292),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              if(checkColor2 == Color.fromRGBO(142, 142, 142, 1)){
                                checkColor2 = Color.fromRGBO(80, 138, 123, 1);
                              }
                              else{
                                checkColor2 = Color.fromRGBO(142, 142, 142, 1);
                              }
                            });
                          }, 
                          icon: Icon(Icons.check_box_rounded , color: checkColor2 , size: 26,)
                        ),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomLeft: Radius.circular(22)
                            ),
                            child: Container(
                              color: Color.fromRGBO(230, 228, 227, 1),
                              child: Image.asset('assets/Images/image 5.png' , width: 80,)
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  child: Text('Turtleneck Sweater' , style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 76 , top: 7),
                                  child: Text('\$ 39.99' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6 , top: 7),
                                  child: Text('Size: M  |  Color: White' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60 , left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Colors.black)
                            ),
                            child: Container(
                              height: 30,
                              width: 80,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 1.5),
                                    width: 33,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if(counter2 >= 1){
                                            counter2--;
                                          }
                                        });
                                      }, 
                                      icon: Icon(Icons.remove , color: Colors.grey , size: 16,)
                                    ),
                                  ),
                                  Container(
                                    child: Text('$counter2' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                                  ),
                                  Container(
                                    width: 33,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          counter2++;
                                        });
                                      }, 
                                      icon: Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.add , color: Colors.grey , size: 16,)
                                      )
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ]
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(0, 5),
                    )
                  ]
                ),
                margin: EdgeInsets.only(top: 30),
                child: Container(
                  height: 110,
                  width: 350,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 292),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              if(checkColor3 == Color.fromRGBO(142, 142, 142, 1)){
                                checkColor3 = Color.fromRGBO(80, 138, 123, 1);
                              }
                              else{
                                checkColor3 = Color.fromRGBO(142, 142, 142, 1);
                              }
                            });
                          }, 
                          icon: Icon(Icons.check_box_rounded , color: checkColor3 , size: 26,)
                        ),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomLeft: Radius.circular(22)
                            ),
                            child: Container(
                              color: Color.fromRGBO(218, 217, 217, 1),
                              child: Image.asset('assets/Images/image 36.png' , width: 80,)
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 44),
                                  child: Text('Cotton T-shirt' , style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 73 , top: 7),
                                  child: Text('\$ 30.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6 , top: 7),
                                  child: Text('Size: L  |  Color: Black' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 60 , left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Colors.black)
                            ),
                            child: Container(
                              height: 30,
                              width: 80,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 1.5),
                                    width: 33,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if(counter3 >= 1){
                                            counter3--;
                                          }
                                        });
                                      }, 
                                      icon: Icon(Icons.remove , color: Colors.grey , size: 16,)
                                    ),
                                  ),
                                  Container(
                                    child: Text('$counter3' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                                  ),
                                  Container(
                                    width: 33,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          counter3++;
                                        });
                                      }, 
                                      icon: Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.add , color: Colors.grey , size: 16,)
                                      )
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ]
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top : 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(0, -3),
                    )
                  ]
                ),
                child: Container(
                  height: 280,
                  child: Column(
                    children: [

                      Container(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                      
                            Container(
                              margin: EdgeInsets.only(top: 30 , left: 30),
                              child: Text('Product price' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30 , left: 195),
                              child: Text('\$110' , style: TextStyle(fontWeight: FontWeight.bold),),
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
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                      
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text('Shipping' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 220),
                              child: Text('Freeship' , style: TextStyle(fontWeight: FontWeight.bold),),
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
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                      
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text('Subtotal' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),)
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 225),
                              child: Text('\$110' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                            ),
                            
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 300,
                        margin: EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(52, 52, 52, 1)
                          ),
                          onPressed: (){}, 
                          child: Text('Proceed to checkout' , style: TextStyle(color: Colors.white , fontSize: 18),),
                        ),
                      ),

                    ],
                  ),
                ),
              )

            ],
          ),
        ],
      ),
    );
  }

}