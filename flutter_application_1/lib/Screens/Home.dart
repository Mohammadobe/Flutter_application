import 'package:flutter/material.dart';
import 'homePage.dart';

void main(){
  runApp(appGemPage7());
}

class appGemPage7 extends StatelessWidget{

  @override
  Widget  build(BuildContext context) {
    return MaterialApp(
      home : appPage8(),
    );
  } 

}

class  appPage8 extends StatefulWidget {

  @override
  _appPage8State createState() => _appPage8State();

}

class _appPage8State extends  State<appPage8> {

  int _selectedIndex = 0;
  int _selectedIndexBottom = 0;
  bool _isPressed = false;
 
  var modeColor = Colors.white;
  var buttonColor = Colors.black;
  var buttonTextColor = Colors.black;

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

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });

  }
  
  void _onItemTappedBottom(int index) {

    setState(() {
      _selectedIndexBottom = index;
    });

  }

  @override
  Widget build(BuildContext context){

    List _widgetOptions = [

      homeScreen,
      
      ListView(
        children: [
          Column(
            children: [
              Row(
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
          
              Column(
                children: [
          
                  GestureDetector(
          
                    onTap: () {
                      setState(() {
                        _isPressed = !_isPressed;
                      } );
                    },
          
                    child: Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Image.asset('assets/Images/image 16.png'),
                    ),
          
                  ),
          
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Text('Jacket' , style: TextStyle(fontSize: 18))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 148),
                          child: Row(
                            children: [
                              Text('128 Items' , style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 320,
                    child: Divider(
                      height: 50,
                      color: Color.fromARGB(255, 221, 219, 219),
                    ),
                  ),
          
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Text('Skirts' , style: TextStyle(fontSize: 18))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 163),
                          child: Row(
                            children: [
                              Text('40 Items', style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 320,
                    child: Divider(
                      height: 50,
                      color: Color.fromARGB(255, 221, 219, 219),
                    ),
                  ),
          
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Text('Dresses' , style: TextStyle(fontSize: 18))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 143),
                          child: Row(
                            children: [
                              Text('36 Items' , style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 320,
                    child: Divider(
                      height: 50,
                      color: Color.fromARGB(255, 221, 219, 219),
                    ),
                  ),
          
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 106),
                          child: Text('Sweaters' , style: TextStyle(fontSize: 16))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 96),
                          child: Row(
                            children: [
                              Text('24 Items' , style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: 270,
                    child: Divider(
                      height: 50,
                      color: Color.fromARGB(255, 221, 219, 219),
                    ),
                  ),
          
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 105),
                          child: Text('Jeans' , style: TextStyle(fontSize: 16))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 120),
                          child: Row(
                            children: [
                              Text('14 Items' , style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: 270,
                    child: Divider(
                      height: 50,
                      color: Color.fromARGB(255, 221, 219, 219),
                    ),
                  ),
          
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Text('T-Shirts' , style: TextStyle(fontSize: 18))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 146),
                          child: Row(
                            children: [
                              Text('12 Items' , style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 320,
                    child: Divider(
                      height: 50,
                      color: Color.fromARGB(255, 221, 219, 219),
                    ),
                  ),
          
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Text('Pants' , style: TextStyle(fontSize: 18))
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 168),
                          child: Row(
                            children: [
                              Text('9 Items' , style: TextStyle(color: Colors.grey)),
                              Icon(Icons.navigate_next_outlined)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 16 , left: 12),
                child: Image.asset('assets/Images/image 17.png'),
              ),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: Image.asset('assets/Images/image 18.png'),
              ),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: Image.asset('assets/Images/image 19.png'),
              ),

              
          
            ],
          ),
        ]
      ),
      
    ];

    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text('Gemstore' , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold))
        ),
        
        actions: [
          Stack(
            children: [

              Container(
                margin: EdgeInsets.only(right: 13),
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.black,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 8 , left: 17),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 3.5,
                ),
              ),

            ],
          ),

        ],
        
      ),

      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        child: Drawer(
          child: Container(
            color: modeColor,
            child: ListView(
                    
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: modeColor,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/Images/Mohammad.jpg'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40 , left: 15),
                          child: Column(
                            children: [
                          
                              Container(
                                width: 140,
                                child: Text('Mohammad Obeidat' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.bold , color: buttonColor),)
                              ),

                              SizedBox(height: 8),
                          
                              Container(
                                width: 140,
                              child: Text('mohammadahmad23@gmail.com' , style: TextStyle(fontSize: 11 , fontWeight: FontWeight.bold , color: buttonColor))
                              ),
                          
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                    
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Homepage' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 0,
                  onTap: () {
                    
                    _onItemTapped(0);
                    Navigator.pop(context);
                    
                  },
                ),
                    
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text('Discover' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 1,
                  onTap: () {
                    
                    _onItemTapped(1);
                    Navigator.pop(context);
                    
                  },
                ),
                    
                ListTile(
                  leading: Icon(Icons.shopping_bag_outlined),
                  title: Text('My Order' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    
                    _onItemTapped(2);
                    Navigator.pop(context);
                    
                  },
                ),
                    
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('My profile' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    
                    _onItemTapped(2);
                    Navigator.pushNamed(context, '/Sign Up');
                    
                  },
                ),
                    
                SizedBox(height: 20),
                    
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text('Other' , style: TextStyle(fontSize: 20)),
                ),
                    
                SizedBox(height: 20),
                    
                ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Setting' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    
                    _onItemTapped(2);
                    Navigator.pop(context);
                    
                  },
                ),
                    
                ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text('Support' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    
                    _onItemTapped(2);
                    Navigator.pop(context);
                    
                  },
                ),
                    
                ListTile(
                  leading: Icon(Icons.error_outline),
                  title: Text('About us' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    
                    _onItemTapped(2);
                    Navigator.pop(context);
                    
                  },
                ),

                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                  
                        Container(
                          height: 35,
                          margin: EdgeInsets.only(left: 45),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: modeColor
                            ),
                            onPressed: (){
                              setState(() {
                                if((modeColor == Colors.black)) {
                                  modeColor = Colors.white;
                                  buttonColor = Colors.black;
                                  buttonTextColor = Colors.black;
                                }
                              });
                            }, 
                            child: Row(
                              children: [
                                Icon(Icons.light_mode),
                                Text('Light'),
                              ],
                            ),
                          ),
                        ),
                  
                        SizedBox(width: 10),
                  
                        Container(
                          height: 35,
                          child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                              backgroundColor: modeColor
                            ),
                            onPressed: (){
                              setState(() {
                                if (modeColor == Colors.white) {
                                  modeColor = Colors.black;
                                  buttonColor = Colors.white;
                                  buttonTextColor = Colors.white;
                                }
                              });
                            }, 
                            child: Row(
                              children: [
                                Icon(Icons.dark_mode_outlined),
                                Text('Dark'),
                              ],
                            ),
                          ),
                        ),
                  
                      ],
                    ),
                  ),
                ),
                    
              ],
                    
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 0.3,
            ),
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          ),
          child: Container(
            height: 70,
            child: BottomNavigationBar(
              items: [

                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined , size: 30),
                  label: '',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.search , size: 30),
                  label: '',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined , size: 30),
                  label: '',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline , size: 30),
                  label: '',
                ),

              ],
              onTap: _onItemTappedBottom,
              currentIndex: _selectedIndexBottom,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
            ),
          ),
        ),
      ),

      body: _widgetOptions.elementAt(_selectedIndexBottom),
    );
  }
}