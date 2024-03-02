import 'package:flutter/material.dart';

void main(){
  runApp(appGemPage5());
}

class appGemPage5 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: appPage5(),
    );
  }

}

class appPage5 extends StatefulWidget {

  @override
  _appPage5State createState() => _appPage5State();

}

class  _appPage5State extends State<appPage5> {

  final _formKey = GlobalKey <FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          children: [
            Form(
              key :_formKey,
              child: Container(
                child: Column(
                  children: [
                    
                    Container(
                      margin: EdgeInsets.only(top: 22 , right: 290),
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
                              Navigator.pushNamed(context, '/Log In');
                            },
                            icon: Icon(Icons.arrow_back_ios_rounded , color: Colors.black),
                          ),
                        ),
                      ),
                    ),
              
                    SizedBox(height: 50),
              
                    Container(
                      margin: EdgeInsets.only(right: 93),
                      child: Text('Forgot password?' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
                    ),
              
                    SizedBox(height: 40),
              
                    Container(
                      margin: EdgeInsets.only(left: 37 , right: 45),
                      child: Text('Enter email associated with your account '
                                  "and we'll send and email with intructions to "
                                  'reset your password' , style: TextStyle(fontSize: 16 , color: Colors.grey),
                      ),
                    ),
            
                    SizedBox(height: 60),
              
                    Container(
                      margin: EdgeInsets.only(right: 30 , left: 30),
                      child: TextFormField(
                                    
                        validator: (value) {
                                    
                          if(value!.isEmpty){
                            return 'enter a valid eamil';
                          }
                                  
                          return null;
                        },
                                    
                        decoration: InputDecoration(
                          labelText: 'enter your email here',
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 0),
                            child: IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.email_outlined , color: Colors.grey),
                            ),
                          ),
                        ),
                                    
                        onSaved: (newValue) {
                          print('Email: $newValue');
                        },
                                  
                      ),
                    ),
            
                    SizedBox(height: 70),
              
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: (){
                                  
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                            Navigator.pushNamed(context, '/Verification code');
                          } 
                      
                          else{
                            print('error');
                          }
                                  
                        },
                                  
                        child: Text('Next' , style: TextStyle(fontSize: 18),),
                      ),
                    ),
              
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}