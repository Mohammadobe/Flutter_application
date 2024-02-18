import 'package:flutter/material.dart';

void main(){
  runApp(FormApp());
}

class FormApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: FormPage(),
    );

  }
}

class FormPage extends StatefulWidget{

  @override
  _FormPageState createState() => _FormPageState();

}

class _FormPageState extends State<FormPage>{

  final  _formKey = GlobalKey<FormState>();
  String? selectedOption;
  bool isChecked = false;
  double _sliderValue = 0.0;
  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text('Form')),
      ),

      body: Scrollbar(
        thumbVisibility: true,
        child: ListView(
          children: [
            Center(
              child: Form(
                key :_formKey,
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome to form' , style: TextStyle(fontWeight: FontWeight.bold)),
                      
                      TextFormField(
                        validator: (value) {
                              
                          if(value!.isEmpty){
                            return  'Please enter your name';
                          }
                          
                          else if(value.length == 8){
                            // print(value);
                          }
                          
                          else if(value.length < 8){
                            return  'The name must 8 be of letters';
                          }
                          
                          return null;
                        },
                              
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                              
                        onSaved: (newValue) {
                          print('Name: $newValue');
                        },
                              
                      ),
                              
                      SizedBox(height: 50),
                              
                      TextFormField(
                        validator: (value) {
                              
                          if (value!.isEmpty){
                            return  'Please enter your password';
                          }
                              
                          if(value.length <= 8){
                            // print(value);
                          }
                          
                          else if(value.length > 8){
                            return "Password should be atleast 9 characters long";
                          }
                              
                          return null;
                        },
                              
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        onSaved: (newValue) {
                          print('Password: $newValue');
                        },
                        
                      ),
                              
                      SizedBox(height: 20),
                              
                      Column(
                        children: [
                          RadioListTile(
                            title: Text('Male'),
                            value: 'Male',
                            groupValue: selectedOption,
                            onChanged: (value) { 
                              setState(() {
                                selectedOption = value;
                                print('Gender: $value');
                              });
                            }
                          ),
                              
                          RadioListTile(
                            title: Text('Female'),
                            value: 'Female',
                            groupValue: selectedOption,
                            onChanged: (value) { 
                              setState(() {
                              selectedOption = value;
                              print('Gender: $value');
                              });
                            }
                          ),
                              
                        ]
                      ),
                              
                      SizedBox(height: 10),
                              
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,   
                            onChanged: (value){
                              setState(() {
                                isChecked = value!;
                                print('Accept Terms and Conditions: $isChecked');
                              });
                            },
                          ),
                          Text('Accept Terms and Conditions'),
                        ],
                      ),
                              
                      Slider(
                        value: _sliderValue,
                        min: 0.0,
                        max: 5.0,
                        onChanged: (value){
                          setState(() {
                            _sliderValue = value;
                            print('Rating: $_sliderValue');
                          });
                        }
                      ),
                      Text('Rating: $_sliderValue'),
                              
                      SizedBox(height: 20),
                                            
                      ElevatedButton(
                        onPressed: () {
                              
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                          }
                              
                          else{
                            print('error');
                          }
                              
                        }, 
                        child: Text('Submit')
                      ),
                    ],
                  
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );

  }
}