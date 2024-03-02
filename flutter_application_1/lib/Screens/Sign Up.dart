import 'package:flutter/material.dart';

void main(){
  runApp(appGemPage3());
}

class appGemPage3 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: appPage3(),
    );
  }

}

class appPage3 extends StatefulWidget{

  @override
  _appPage3State createState() => _appPage3State();

}

class _appPage3State extends State<appPage3>{

  final _formKey = GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                
                    Container(
                      margin: EdgeInsets.only(top: 40 , right: 240),
                      child: Text('Create' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
                    ),

                    SizedBox(height : 10),
                
                    Container(
                      margin: EdgeInsets.only(right: 154),
                      child: Text('your account' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
                    ),
            
                    SizedBox(height : 30),
            
                    TextFormField(
              
                      validator: (value) {
                        
                        if(value!.isEmpty){
                          return 'Please enter your name';
                        }
              
                        else if(value.length < 10){
                          return 'The name is less than 10 letters';
                        }
              
                        return null;
                      },
              
                      decoration: InputDecoration(
                        labelText: "Enter your name" ,
                      ),
              
                      onSaved: (newValue) {
                        print('Name: $newValue');
                      },
            
                    ),
            
                    SizedBox(height : 20),
            
                    TextFormField(
              
                      validator: (value) {
                        
                        if(value!.isEmpty){
                          return 'Please enter your email';
                        }
              
                        return null;
                      },
              
                      decoration: InputDecoration(
                        labelText: "Email address" ,
                      ),
              
                      onSaved: (newValue) {
                        print('Email: $newValue');
                      },
            
                    ),
            
                    SizedBox(height : 20),
            
                    TextFormField(
              
                      validator: (value) {
                        
                        if(value!.isEmpty){
                          return 'Please enter your password';
                        }
              
                        else if(value.length < 12){
                          return 'The password must contain 12 or more characters';
                        }
              
                        return null;
                      },
              
                      decoration: InputDecoration(
                        labelText: "Password" ,
                      ),
              
                      onSaved: (newValue) {
                        print('Password: $newValue');
                      },
            
                    ),
            
                    SizedBox(height : 20),
            
                    TextFormField(
              
                      validator: (value) {
                        
                        if(value!.isEmpty){
                          return 'Please enter your password';
                        }
            
                        return null;
                      },
              
                      decoration: InputDecoration(
                        labelText: "Confirm password" ,
                      ),
              
                      onSaved: (newValue) {
                        print('Confirm password: $newValue');
                      },
            
                    ),

                    SizedBox(height : 40),
            
                    SizedBox(
                      height: 60,
                      width: 160,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(45, 32, 28, 1)
                        ),
                        onPressed: (){
                                  
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                          }
                      
                          else{
                            print('error');
                          }
                                  
                        },
                        child: Text('SIGN UP' , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
                      ),
                    ),

                    SizedBox(height : 30),

                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text('or sign up with' , style: TextStyle(color: Colors.grey)),
                    ),

                    SizedBox(height : 30),

                    Container(
                      margin: EdgeInsets.only(left: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CircleAvatar(
                            radius: 17.5,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage('assets/Images/Apple icon.png'),
                            ),
                          ),

                          SizedBox(width: 25),
                          
                          CircleAvatar(
                            radius: 17.5,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage('assets/Images/Google icon.png'),
                            ),
                          ),

                          SizedBox(width: 25),

                          CircleAvatar(
                            radius: 17.5,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage('assets/Images/Facebook icon.png'),
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height : 30),

                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Row(
                        children: [

                          Text('Already have account? ' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),

                          Container(
                            margin: EdgeInsets.only(bottom: 2),
                            child: SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/Log In');
                                },
                                child: Text('Log In' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , decoration: TextDecoration.underline))
                              ),
                            ),
                          ),

                        ],
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