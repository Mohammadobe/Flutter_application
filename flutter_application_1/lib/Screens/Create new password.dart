import 'package:flutter/material.dart';

void main(){
  runApp(appGemPage7());
}

class  appGemPage7 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : appPage7(),
    );
  }

}

class  appPage7 extends StatefulWidget {

  @override
  _appPage7State createState() => _appPage7State();

}

class  _appPage7State extends State<appPage7> {

  final _formKey = GlobalKey <FormState>();
  final TextEditingController _pass = TextEditingController();
  bool _passwordVisible = false;
  bool _passwordVisible1 = false;

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
                      margin: EdgeInsets.only(top: 22 , right: 280),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/Verification code');
                        }, 
                        child: SizedBox(
                          height: 45,
                          child: Icon(Icons.arrow_back_ios_rounded , color: Colors.black , size: 30,),
                        ),
                      ),
                    ),
                
                    Container(
                      margin: EdgeInsets.only(top: 40 , right: 38.7),
                      child: Text('Create new password' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
                    ),

                    SizedBox(height: 25),

                    Container(
                      child: Text('your new password must be different from previously used password' , style: TextStyle(fontSize: 17.5),
                      ),
                    ),

                    SizedBox(height: 70),
            
                    TextFormField(

                      controller: _pass,
                      validator: (value) {
                        
                        if(value!.isEmpty){
                          return 'Please enter password';
                        }

                        return null;
                      },

                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                        labelText: "New Password",
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          }, 
                          icon: Container(
                            margin: EdgeInsets.only(top: 22),
                            child: Icon(
                              _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
              
                      onSaved: (newValue) {
                        print('New password: $newValue');
                      },
            
                    ),
            
                    SizedBox(height: 40),
            
                    TextFormField(
              
                      validator: (value) {
                        
                        if(value!.isEmpty){
                          return 'Please enter password';
                        }

                        else if(value != _pass.text){
                          return 'Password does not match';
                        }

                        return null;
                      },

                      obscureText: _passwordVisible1,
                      decoration: InputDecoration(
                        labelText: "Confirm Password" ,
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _passwordVisible1 = !_passwordVisible1;
                            });
                          }, 
                          icon: Container(
                            margin: EdgeInsets.only(top: 22),
                            child: Icon(
                              _passwordVisible1
                              ? Icons.visibility_off
                              : Icons.visibility,
                              color: Colors.grey,
                            ),
                          )
                        ),
                      ),
              
                      onSaved: (newValue) {
                        print('Confirm Password: $newValue');
                      },
            
                    ),
            
                    SizedBox(height: 110),
            
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        onPressed: (){
                                  
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                          }
                      
                          else{
                            print('error');
                          }
                                  
                        },
                        child: Text('Confirm' , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
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