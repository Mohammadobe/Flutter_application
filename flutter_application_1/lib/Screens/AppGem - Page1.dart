import 'package:flutter/material.dart';

void main(){
  runApp(appGemPage1());
}

class appGemPage1 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: appPage1(),
    );
  }

}

class appPage1 extends StatefulWidget{

  @override
  _appPage1State createState() => _appPage1State();

}

class _appPage1State extends State<appPage1>{

  final PageController _pageController = PageController(initialPage: 0);

  final List images = [
    'assets/Images/Fashion 1.jpg',
    'assets/Images/Fashion 2.jpg',
    'assets/Images/Fashion 3.jpg',
  ];

  final List _titles = [
    'Welcome',
    'Welcome',
    'Welcome',
  ];

  final List _subTitles = [
    'First piece',
    'Second piece',
    'Third piece',
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
                  height: 413.2,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
          
                SizedBox(
                  height: 370,
                  child: Container(
                    color: Colors.black87,
                  ),
                ),
          
              ],
            ),
          ),

          SizedBox(
            child: Container(
              margin: EdgeInsets.only(top: 550),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/AppGem - Page2');
                  },
                  child: Text('Shopping Now' , style: TextStyle(color: Colors.white , fontSize: 20)),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 100 , left: 47),
            height: 480,
            width: 300,
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              itemBuilder: (context , index) {
                return Column(
                  children: [
                    Text(_titles[index] , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
                    Text(_subTitles[index] , style: TextStyle(fontSize: 17.5)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      // child: SizedBox(
                      //   width: double.infinity,
                      //   height: 420, 
                      child: Image.asset(
                        images[index] , fit: BoxFit.fill ,
                        height: 382,
                        width: 250,
                      ),
                    ),
                    // ),
                    
                    Container(
                      margin: EdgeInsets.only(top: 16, left: 120),
                      child: Row(
                        children: [

                          CircleAvatar(
                            radius: 6,
                            backgroundColor: 0 == index
                            ? Colors.red
                            :Colors.white
                          ),

                          SizedBox(width: 8),

                          CircleAvatar(
                            radius: 6,
                            backgroundColor: 1 == index
                            ? Colors.red
                            :Colors.white
                          ),

                          SizedBox(width: 8),

                          CircleAvatar(
                            radius: 6,
                            backgroundColor: 3 == index
                            ? Colors.red
                            :Colors.white
                          ),

                        ],
                      ),
                    ),

                  ],
                );
              },
            ),
          ),

        //   Container(
        //     margin: EdgeInsets.only(top: 230),
        //     child: CarouselSlider(
        //       options: CarouselOptions(height: 340),
        //       items: [0,1,2,3].map((i){
        //         return Builder(
        //           builder: (BuildContext context) {
        //             return Container(
        //               width: MediaQuery.of(context).size.width,
        //               margin: EdgeInsets.symmetric(horizontal: 8.0),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(32),
        //                 image: DecorationImage(
        //                 image: Image.asset(images[i]).image ,
        //                 fit: BoxFit.fill
        //                 ),
        //               ),
        //             );
        //           },
        //         );
        //       }).toList(),
        //     ),
        //   ),

        ],
      ),
    );
  }
}