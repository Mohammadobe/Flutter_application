import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

void main() => runApp(Register());

class Register extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: registerPage(),
    );

  }
}

class registerPage extends StatefulWidget{

  @override
  _registerPageState  createState() => _registerPageState();

}

class _registerPageState extends  State<registerPage> {

  final  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? Gender;
  PhoneNumber phoneNumber = PhoneNumber(isoCode: '');

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 135, 199),
        title: Center(child: Text('Register' , style: TextStyle(fontSize: 30))),
      ),

      body: Container(
        color: Colors.blue[100],
        child: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            children: [
              Center(
                child: Form(
                  key: _formkey,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
              
                        Text('Sign up' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
              
                        Row(
                          children: [
                            Expanded(
                            
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'enter first name';
                                  }
                            
                                  else{
                                    print('error');
                                  }
                            
                                  return null;
                                },
                            
                                decoration: InputDecoration(
                                  labelText: 'First name:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
                            
                                onSaved: (newValue) {
                                  print('First name: $newValue');
                                },
                              ),
                            
                            ),
              
                            SizedBox(width: 25),
              
                            Expanded(
              
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'enter last name';
                                  }
              
                                  else{
                                    print('error');
                                  }
              
                                  return null;
                                },
              
                                decoration: InputDecoration(
                                  labelText: 'Last name:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
              
                                onSaved: (newValue) {
                                  print('Last name: $newValue');
                                },
                              ),
              
                            ),
                          ]
                        ),
              
                        SizedBox(height: 25),
              
                        TextFormField(
              
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'enter email';
                            }
                            
                            else{
                              print('error');
                            }
                            
                            return null;
                          },
                            
                          decoration: InputDecoration(
                            labelText: 'Email:' , labelStyle: 
                            TextStyle(fontSize: 15),
                          ),
                            
                          onSaved: (newValue) {
                            print('Email: $newValue');
                          },
              
                        ),
              
                        SizedBox(height: 25),
              
                        Row(
                          children: [
                            Expanded(
                            
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'enter password';
                                  }
                            
                                  else{
                                    print('error');
                                  }
                            
                                  return null;
                                },
                            
                                decoration: InputDecoration(
                                  labelText: 'Password:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
                            
                                onSaved: (newValue) {
                                  print('Password: $newValue');
                                },
                              ),
                            
                            ),
              
                            SizedBox(width: 25),
              
                            Expanded(
              
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'enter password';
                                  }
              
                                  else{
                                    print('error');
                                  }
              
                                  return null;
                                },
              
                                decoration: InputDecoration(
                                  labelText: 'Confirm password:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
              
                                onSaved: (newValue) {
                                  print('Confirm password: $newValue');
                                },
                              ),
              
                            ),
                          ]
                        ),
              
                        SizedBox(height: 25),
              
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: RadioListTile(
                                  title: Text('Male'),
                                  value: 'Male', 
                                  groupValue: Gender, 
                                  onChanged: (value) {
                                    setState(() {
                                      Gender = value;
                                      print('Gender: $value');
                                    });
                                  }
                                ),
                              ),
                          
                              Expanded(
                                child: RadioListTile(
                                  title: Text('Female'),
                                  value: 'Female', 
                                  groupValue: Gender, 
                                  onChanged: (value) {
                                    setState(() {
                                      Gender = value;
                                      print('Gender: $value');
                                    });
                                  }
                                ),
                              ),
                                      
                            ],
                          ),
                        ),
                        
                        SizedBox(height: 25),
        
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber  number) {
                            setState(() {
                              phoneNumber = number;
                              print('Code: $number');
                            });
                          },
                          selectorConfig: SelectorConfig(
                            selectorType:  PhoneInputSelectorType.DROPDOWN,
                          ),
                          hintText: 'Phone number' , textStyle: 
                          TextStyle(fontSize: 15),
                        ),
        
                        SizedBox(height: 25),
        
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Day:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
        
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a day';
                                  }
        
                                  return null;
                                },
        
                              ),
                            ),
        
                            SizedBox(width: 16),
        
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Month:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
        
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a month';
                                  }
        
                                  return null;
                                },
        
                              ),
                            ),
        
                            SizedBox(width: 16),
        
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Year:' , labelStyle: 
                                  TextStyle(fontSize: 15),
                                ),
        
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a year';
                                  }
        
                                  return null;
                                },
        
                              ),
                            ),
        
                          ],
                        ),
        
                        SizedBox(height: 25),
        
                        ElevatedButton(
                          onPressed: () {
        
                            if(_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();
                            }
        
                            else{
                              print('error');
                            }
                          }, 
                          child: Text('Submit'),
                        ),
        
                      ],
                    ),   
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}