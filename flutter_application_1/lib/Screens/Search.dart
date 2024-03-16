import 'package:flutter/material.dart';

void main(){
  runApp(Search());
}

class  Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : appPage9()
    );
  }

}

class appPage9 extends StatefulWidget{

  @override
  _appPage9State createState() => _appPage9State ();

}

class _appPage9State  extends State<appPage9> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 50 , right: 295),
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
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                  
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 248, 248),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 214, 214, 214),
                        offset: Offset(0,1.5),
                        blurRadius: 0.5,
                      ),
                    ]
                  ),
                  height: 50, 
                  width: 260,
                  margin: EdgeInsets.only(left: 30 , top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search , color: Colors.grey),
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                  
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 248, 248),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 214, 214, 214),
                        offset: Offset(0,1.5),
                        blurRadius: 0.5,
                      ),
                    ]
                  ),
                  margin: EdgeInsets.only(top : 15 , left: 18),
                  child: Icon(Icons.tune , color: Colors.grey , size: 30)
                ),
                  
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 30 , left: 33),
            child: Row(
              children: [
                Text('Recent Searches' , style: TextStyle(color: Colors.grey , fontSize: 15)),
                Container(
                  margin: EdgeInsets.only(left: 180),
                  child: Icon(Icons.delete , size: 20  , color: Colors.grey),
                ),  
              ],
            ),
          ),

          SizedBox(height: 35),

          Row(
            children: [

              Container(
                margin: EdgeInsets.only(left: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    width: 155,
                    child: Container(
                      height: 40,
                      color: Color.fromARGB(255, 250, 248, 248),
                      child: Row(
                        children: [
                                
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text('Sunglasses' , style: TextStyle(fontSize: 15)),
                          ),
                
                          SizedBox(width: 25),
                
                          Container(
                            child: Icon(Icons.clear , color: Colors.grey),
                          ),
                          
                        ],
                      ),
              
                    ),
                  ),
                ),
              ),

              SizedBox(width: 30),

              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    width: 140,
                    child: Container(
                      height: 40,
                      color: Color.fromARGB(255, 250, 248, 248),
                      child: Row(
                        children: [
                                
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text('Sweater' , style: TextStyle(fontSize: 15)),
                          ),
                
                          SizedBox(width: 25),
                
                          Container(
                            child: Icon(Icons.clear , color: Colors.grey),
                          ),
                          
                        ],
                      ),
              
                    ),
                  ),
                ),
              ),
              
            ],
          ),

          SizedBox(height: 18),

          Container(
            margin: EdgeInsets.only(right: 192),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: SizedBox(
                width: 140,
                child: Container(
                  height: 40,
                  color: Color.fromARGB(255, 250, 248, 248),
                  child: Row(
                    children: [
                            
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text('Hoodie' , style: TextStyle(fontSize: 15)),
                      ),
            
                      SizedBox(width: 25),
            
                      Container(
                        child: Icon(Icons.clear , color: Colors.grey),
                      ),
                      
                    ],
                  ),
          
                ),
              ),
            ),
          ),

          SizedBox(height: 67),

          Container(
            margin: EdgeInsets.only(left: 35),
            child: Row(
              children: [
                Text('Popular this week' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(left: 95),
                  child: Text('Show all' , style: TextStyle(fontSize: 16 , color: Colors.grey),),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          Container(
            margin: EdgeInsets.only(left: 45),
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
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          child: Image.asset('assets/Images/image 20.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Lihua Tunic White' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10)),
                      Text('\$ 53.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),

                SizedBox(width: 36),
                      
                Container(
                  width: 133,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          child: Image.asset('assets/Images/image 21.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Skirt Dress' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10)),
                      Text('\$ 34.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),

                SizedBox(width: 34),
                      
                Container(
                  width: 133,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: Color.fromARGB(255, 243, 241, 241),
                          child: Image.asset('assets/Images/image 22.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Kimi Green Dress' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10)),
                      Text('\$ 47.99' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),
                      
              ],
            ),
          ),


        ]
      ),

    );

  }
}