import 'package:flutter/material.dart';

void main(){
  runApp(page2());
}

class page2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: PAGE2(),
    );
  }

}

class PAGE2 extends StatefulWidget{

  @override
  _PAGE2State createState() => _PAGE2State();

}

class _PAGE2State extends State<PAGE2>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                onPressed: (){
                  Navigator.pushNamed(context, '/Task 5-1');
                }, 
                child: Text('Page 1'),
              ),

              SizedBox(width: 10),
              
              ElevatedButton(
                onPressed: (){}, 
                child: Text('Page 2'),
              ),

            ],
          ),
          
        ),
      ),

      body: Container(
        color: Colors.blue[100],
        child: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            children: [
              Column(
                children: [

                  Text('News' , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic , decoration: TextDecoration.underline)),
                  
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Text('Sports News:' , style: TextStyle(fontSize: 25)),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('The Jordanian national team coach,' 
                      'Moroccan Hussein Amouta, revealed on Sunday that'
                      'he is discussing the issue of his departure with' 
                      'the Jordanian Football Association.Amouta said, in' 
                      'an interview with Moroccan Channel 2: “The issue of' 
                      'leaving as coach of the Jordanian national team has' 
                      'already begun to be discussed.”He added: "I will not' 
                      'leave now, because my contract is still valid, but after' 
                      'three or four months."Regarding the reason for his departure,' 
                      'the 54-year-old coach explained that he is facing “some difficult' 
                      'circumstances that require'
                      'me to be with my family in Morocco.”' , style: TextStyle(fontSize: 16)
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                        Text('Formula One News:' , style: TextStyle(fontSize: 25)),
                      ],
                    ),

                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Verstappen "will never refuse" a deal like the one Hamilton concluded with Ferrari'
                    'Max Verstappen, three-time world champion in Formula One and current Red Bull driver, said that he would “never refuse” a deal like the one that Lewis Hamilton concluded with Ferrari, as the Briton will leave the ranks of Mercedes to move to the Red Castle starting from the 2025 season.' , style: TextStyle(fontSize: 16)
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                        Text('Health News:' , style: TextStyle(fontSize: 25)),
                      ],
                    ),

                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Scientists from Harvard University have developed an antimicrobial compound called chrysomycin, which overcomes mechanisms used by superbugs to confront commonly used antibiotics.'
                    'The research team found that the new compound kills many antibiotic-resistant strains of bacteria, such as Staphylococcus aureus and Pseudomonas aeruginosa.' , style: TextStyle(fontSize: 16)
                    ),
                  ),

                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}