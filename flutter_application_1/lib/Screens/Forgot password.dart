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
                margin: EdgeInsets.all(35),
                child: Column(
                  children: [
                    
                    Container(
                      margin: EdgeInsets.only(top: 22 , right: 260),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/Log In');
                        }, 
                        child: SizedBox(
                          height: 45,
                          child: Icon(Icons.arrow_back_ios_rounded , color: Colors.black , size: 30,),
                        ),
                      ),
                    ),
              
                    SizedBox(height: 60),
              
                    Container(
                      margin: EdgeInsets.only(right: 78),
                      child: Text('Forgot password?' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
                    ),
              
                    SizedBox(height: 40),
              
                    Container(
                      child: Text('Enter email associated with your account '
                                  "and we'll send and email with intructions to "
                                  'reset your password' , style: TextStyle(fontSize: 16),
                      ),
                    ),
            
                    SizedBox(height: 60),
              
                    TextFormField(
              
                      validator: (value) {
              
                        if(value!.isEmpty){
                          return 'Please enter an Email';
                        }
            
                        return null;
                      },
              
                      decoration: InputDecoration(
                        hintText: 'enter your email here',
                        icon: Icon(Icons.email_outlined),
                        ),
              
                      onSaved: (newValue) {
                        print('Email: $newValue');
                      },
            
                    ),
            
                    SizedBox(height: 50),
              
                    ElevatedButton(
                      onPressed: (){
            
                        if(_formKey.currentState!.validate()){
                          _formKey.currentState!.save();
                        } 

                        else{
                          print('error');
                        }

                        Navigator.pushNamed(context, '/Verification code');
            
                      },
            
                      child: Text('Next'),
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