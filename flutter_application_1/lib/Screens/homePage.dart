import 'package:flutter/material.dart';

final List images = [
  'assets/Images/image 4.png',
  'assets/Images/image 4.png',
  'assets/Images/image 4.png',
];

final List titles = [
  'Autumn Collection 2022',
  'Autumn Collection 2021',
  'Autumn Collection 2020',
];

Widget homeScreen = ListView(
  children: [
    Center(
      child: Column(
        children: [
    
          Row(
            children: [
    
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20 , left: 20),
                    child: CircleAvatar(
                      radius: 26,
                      backgroundColor: Color.fromARGB(255, 73, 54, 47),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Color.fromARGB(255, 73, 54, 47),
                          child: Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 33,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20 , top: 10),
                    child: Text('Women' , style: TextStyle(fontSize: 12))
                  ),
                ],
              ),
    
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20 , left: 45),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Color.fromARGB(255, 245, 241, 241),
                      child: Icon(
                        Icons.male,
                        color: Colors.grey,
                        size: 33,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 42 , top: 10),
                    child: Text('Men' , style: TextStyle(color: Colors.grey , fontSize: 12),)
                  ),
                ],
              ),
    
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20 , left: 45),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: const Color.fromARGB(255, 245, 241, 241),
                      child: Icon(
                        Icons.female,
                        color: Colors.grey,
                        size: 33,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10 , left: 45),
                    child: Text('Accessories' , style: TextStyle(color: Colors.grey , fontSize: 12))
                  ),
                ],
              ),
    
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20 , left: 45),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: const Color.fromARGB(255, 245, 241, 241),
                      child: Icon(
                        Icons.female,
                        color: Colors.grey,
                        size: 33,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10 , left: 44),
                    child: Text('Beauty' , style: TextStyle(color: Colors.grey , fontSize: 12))
                  ),
                ],
              ),
    
            ],
          ),
    
          SizedBox(height: 40),
    
          Container(
            width: 330,
            height: 210,
            child: Stack(
              children: [
            
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: PageView.builder(
                    itemCount: images.length,
                    itemBuilder: (context , _selectedIndex) {
                      return Stack(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Container(
                                  color: Color.fromARGB(255, 235, 232, 232),
                                  child: Image.asset(
                                    images[_selectedIndex] , fit: BoxFit.cover , 
                                    height: 180,
                                    width: 360,
                                  ),
                                ),
                              ),
                              
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 200 , top: 15),
                            child: Text(
                              titles[_selectedIndex] , style: TextStyle(
                              fontSize: 25 , color: Colors.white , fontWeight: FontWeight.bold),
                            ),  
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 160, left: 145),
                            child: Row(
                              children: [
                                  
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 5,                          
                                    backgroundColor: 0 == _selectedIndex
                                    ? Colors.white
                                    : Color.fromARGB(255, 77, 76, 76)
                                  ),
                                ),
                                  
                                SizedBox(width: 8),
                                  
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: 1 == _selectedIndex
                                    ? Colors.white
                                    : Color.fromARGB(255, 77, 76, 76)
                                  ),
                                ),
                                  
                                SizedBox(width: 8),
                                  
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: 2 == _selectedIndex
                                    ? Colors.white
                                    : Color.fromARGB(255, 77, 76, 76)
                                  ),
                                ),
                                  
                              ],
                            ),
                          ),

                        ]
                      );
                    }
                  ),
                ),
                  
              ],
            ),
          ),
    
          Container(
            margin: EdgeInsets.only(left: 28),
            child: Row(
              children: [
                Text('Feature Products' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(left: 95),
                  child: Text('Show all' , style: TextStyle(fontSize: 16 , color: Colors.grey),),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
    
          Container(
            margin: EdgeInsets.only(left: 25 , right: 25),
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
                          child: Image.asset('assets/Images/image 5.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Turtleneck Sweater' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10)),
                      Text('\$ 39.99' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),
                      
                Container(
                  width: 133,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          child: Image.asset('assets/Images/image 6.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Long Sleeve Dress' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10)),
                      Text('\$ 45.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),
                      
                Container(
                  width: 133,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: Color.fromARGB(255, 243, 241, 241),
                          child: Image.asset('assets/Images/image 7.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Sportwear Set' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10)),
                      Text('\$ 80.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),
                      
                Container(
                  width: 133,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: Color.fromARGB(255, 243, 241, 241),
                          child: Image.asset('assets/Images/image 8.png' , height: 170),
                        ),
                      ),
                      SizedBox(height: 11),
                      Text('Elegant Dress' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 10),),
                      Text('\$ 75.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
                    ],
                  ),
                ),
                      
              ],
            ),
          ),

          Container(
            child: Image.asset('assets/Images/image 9.png'),
          ),

          SizedBox(height: 30),

          Container(
            margin: EdgeInsets.only(left: 28),
            child: Row(
              children: [
                Text('Recommended' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(left: 105),
                  child: Text('Show all' , style: TextStyle(fontSize: 16 , color: Colors.grey),),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
    
          Container(
            margin: EdgeInsets.only(left: 25 , right: 25),
            width: 400,
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 196, 194, 194).withOpacity(0.1),
                          offset: Offset(0, 60),
                        )
                      ]
                    ),
                    child: Card(
                      elevation: 0.5,
                      child: ClipRRect(
                        borderRadius:  BorderRadius.circular(15),
                        child: Container(
                          width: 250,
                          color: Color.fromARGB(255, 252, 252, 251),
                          child: Stack(
                            children: [
                          
                              Row(
                                children: [
                          
                                  Container(
                                    width: 250,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        margin: EdgeInsets.only(right: 180),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(11),
                                          child: Image.asset('assets/Images/image 10.png')
                                        )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          
                              Container(
                                margin: EdgeInsets.only(left: 85 , top: 10),
                                child: Column(
                                  children: [
                                
                                    Container(
                                      margin: EdgeInsets.only(right: 13),
                                      child: Text('White fashion hoodie' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12),),
                                    ),
                                
                                    Container(
                                      margin: EdgeInsets.only(right: 70),
                                      child: Text('\$ 29.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                          
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 20),

                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 196, 194, 194).withOpacity(0.1),
                            offset: Offset(0, 60),
                          )
                        ]
                    ),
                    child: Card(
                      elevation: 0.5,
                      child: ClipRRect(
                        borderRadius:  BorderRadius.circular(15),
                        child: Container(
                          width: 250,
                          color: Color.fromARGB(255, 252, 252, 251),
                          child: Stack(
                            children: [
                          
                              Row(
                                children: [
                          
                                  Container(
                                    width: 250,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        margin: EdgeInsets.only(right: 186),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/Images/image 11.png')
                                        )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          
                              Container(
                                margin: EdgeInsets.only(left: 85 , top: 10),
                                child: Column(
                                  children: [
                                
                                    Container(
                                      margin: EdgeInsets.only(right: 53),
                                      child: Text('Cotton T-shirt' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12),),
                                    ),
                                
                                    Container(
                                      margin: EdgeInsets.only(right: 70),
                                      child: Text('\$ 30.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17)),
                                    ),
                                  ],
                                ),
                              ),
                          
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),

          SizedBox(height: 30),

          Container(
            margin: EdgeInsets.only(left: 28),
            child: Row(
              children: [
                Text('Top Collection' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(left: 110),
                  child: Text('Show all' , style: TextStyle(fontSize: 16 , color: Colors.grey),),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          Container(
            height: 160,
            margin: EdgeInsets.only(right: 30 , left: 28),
            child: Image.asset('assets/Images/image 12.png'),
          ),

          Container(
            height: 247,
            margin: EdgeInsets.only(right: 2),
            child: Image.asset('assets/Images/image 13.png'),
          ),

          SizedBox(height: 20),

          Row(
            children: [

              Container(
                margin: EdgeInsets.only(left: 28),
                child: Image.asset('assets/Images/image 14.png' , width: 168,),
              ),

              Container(
                child: Image.asset('assets/Images/image 15.png' , width: 168),
              ),

            ],
          ),

          SizedBox(height: 10),

        ],
      ),
    ),
  ],
);