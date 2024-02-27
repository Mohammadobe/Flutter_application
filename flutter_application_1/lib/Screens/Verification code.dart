import 'package:flutter/material.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';

void main(){
  runApp(appGemPage6());
}

class appGemPage6 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: appPage6(),
    );
  }

}

class appPage6 extends StatefulWidget {

  @override
  _appPage6State createState() => _appPage6State();

}

class  _appPage6State extends State<appPage6> {

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
                          Navigator.pushNamed(context, '/Forgot password');
                        }, 
                        child: SizedBox(
                          height: 45,
                          child: Icon(Icons.arrow_back_ios_rounded , color: Colors.black , size: 30,),
                        ),
                      ),
                    ),
              
                    SizedBox(height: 60),
              
                    Container(
                      margin: EdgeInsets.only(right: 89),
                      child: Text('Verification code' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
                    ),
              
                    SizedBox(height: 40),
              
                    Container(
                      child: Text('Please enter the verification code we sent '
                                  'to your email address' , style: TextStyle(fontSize: 16),
                      ),
                    ),
            
                    SizedBox(height: 60),

                    VerificationCodeField(
                      length: 5,
                      onFilled: (value) => print(value),
                      size: Size(40 , 60),
                      spaceBetween: 16,
                    ),

                    SizedBox(height: 50),
              
                    ElevatedButton(
                      onPressed: (){},
            
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