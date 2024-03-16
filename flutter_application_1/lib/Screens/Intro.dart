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

  final PageController _pageController = PageController(initialPage: 0);

  final List images = [
    'assets/Images/image 1.png',
    'assets/Images/image 2.png',
    'assets/Images/image 3.png',
  ];

  final List _titles = [
    'Discover something new',
    'Update trendy outfit',
    'Explore your true style',
  ];

  final List _subTitles = [
    'Special new arrivals just for you',
    'Favorite brands and hottest trends',
    'Relax and let us bring the style to you',
  ];

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          Center(
            child: Column(
              children: [
            
                SizedBox(
                  height: 500,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                
                SizedBox(
                  height: 305,
                  child: Container(
                    color: Color.fromARGB(255, 87, 85, 85),
                  ),
                ),
                
              ],
            ),
          ),
            
          SizedBox(
            height: 700,
            child: Container(
              margin: EdgeInsets.only(top: 130 , right: 5),
              child: PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                itemBuilder: (context , index) {
                  return Column(
                    children: [
                      Text(_titles[index] , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold)),
                      SizedBox(height: 17),
                      Text(_subTitles[index] , style: TextStyle(fontSize: 16)),
                      SizedBox(height: 28),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Container(
                          color: Color.fromARGB(255, 235, 232, 232),
                          child: Image.asset(
                            images[index] , fit: BoxFit.cover ,
                            height: 400,
                            width: 270,
                          ),
                        ),
                      ),
                            
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 175),
                        child: Row(
                          children: [
                              
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 5,                          
                                backgroundColor: 0 == index
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
                                backgroundColor: 1 == index
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
                                backgroundColor: 2 == index
                                ? Colors.white
                                : Color.fromARGB(255, 77, 76, 76)
                              ),
                            ),
                              
                          ],
                        ),
                      ),
                              
                    ],
                  );
                },
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 650),
            child: Center(
              child: SizedBox(
                width: 230,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 134, 131, 131),
                    side: BorderSide(color: Colors.white , width: 1.2),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: Text('Shopping Now' , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.w700)),
                ),
              ),
            ),
          ),
            
          // Container(
          //   margin: EdgeInsets.only(top: 230),
          //   child: CarouselSlider(
          //     options: CarouselOptions(height: 340),
          //     items: [0,1,2,3].map((i){
          //       return Builder(
          //         builder: (BuildContext context) {
          //           return Container(
          //             width: MediaQuery.of(context).size.width,
          //             margin: EdgeInsets.symmetric(horizontal: 8.0),
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(32),
          //               image: DecorationImage(
          //                 image: Image.asset(images[i]).image ,
          //                 fit: BoxFit.fill
          //               ),
          //             ),
          //           );
          //         },
          //       );
          //     }).toList(),
          //   ),
          // ),
            
        ],
      ),
    );
  }
}