import 'package:flutter/material.dart';

void main(){
  runApp(appGemPage4());
}

class appGemPage4 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: appPage4(),
    );
  }

}

class appPage4 extends StatefulWidget{

  @override
  _appPage4State createState() => _appPage4State();

}

class _appPage4State extends State<appPage4>{

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
                      margin: EdgeInsets.only(top: 40 , right: 220),
                      child: Text('Log into' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
                    ),
                
                    Container(
                      margin: EdgeInsets.only(right: 154),
                      child: Text('your account' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
                    ),
            
                    SizedBox(height: 70),
            
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
            
                    SizedBox(height: 20),
            
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
            
                    SizedBox(height: 30),

                    Container(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        child: Text('Forgot Password?'),
                        onPressed: (){
                          Navigator.pushNamed(context, '/Forgot password');
                        },
                      ),
                    ),

                    SizedBox(height: 50),
            
                    SizedBox(
                      height: 60,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown[900]
                        ),
                        onPressed: (){
                                  
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                          }
                      
                          else{
                            print('error');
                          }
                                  
                        },
                        child: Text('LOG IN' , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
                      ),
                    ),

                    SizedBox(height: 30),

                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text('or log in with' , style: TextStyle(color: Colors.grey)),
                    ),

                    SizedBox(height: 30),

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

                    SizedBox(height: 70),

                    Container(
                      margin: EdgeInsets.only(left: 34),
                      child: Row(
                        children: [

                          Text("Don't have an account? " , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),

                          Container(
                            margin: EdgeInsets.only(bottom: 2),
                            child: SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/Sign Up');
                                },
                                child: Text('Sign Up' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , decoration: TextDecoration.underline))
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