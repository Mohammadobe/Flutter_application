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
  bool _passwordVisible = true;
  bool _passwordVisible1 = true;
  String password = '';
  String confirmPassword = '';
  Color buttonColor = Colors.grey;

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
                              Navigator.pushNamed(context, '/Verification code');
                            },
                            icon: Icon(Icons.arrow_back_ios_rounded , color: Colors.black),
                          ),
                        ),
                      ),
                    ),
              
                    SizedBox(height: 50),

                    Container(
                      margin: EdgeInsets.only(top: 40 , right: 38.7),
                      child: Text('Create new password' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
                    ),

                    SizedBox(height: 25),

                    Container(
                      child: Text('your new password must be different from previously used password' , style: TextStyle(fontSize: 17.5 , color: Colors.grey),
                      ),
                    ),

                    SizedBox(height: 70),
            
                    TextFormField(

                      onChanged: (value) {

                        setState(() {
                          password=value;
                        });

                      },

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

                      onChanged: (value) {
                        
                        setState(() {
                          confirmPassword = value;
                        });

                        if(confirmPassword == password){
                          setState(() {
                             buttonColor = Colors.black;
                          });
                        }

                        else{
                          setState(() {
                             buttonColor = Colors.grey;
                          });
                        }
                      },
              
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
                          backgroundColor: buttonColor,
                        ),
                        onPressed: (){

                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('AlertDialog Title'),
                              content: const Text('AlertDialog description'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ); 

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