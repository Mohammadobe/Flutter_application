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
  bool? isChecked = false;
  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text('Form')),
      ),

      body: Center(
        child: Form(
          key :_formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to form'),
              
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

              SizedBox(height: 30),

              Row(
                children: [
                  CheckboxListTile(
                    title: Text("Accept Terms and Conditions"),
                    value: isChecked,   
                    onChanged: (bool? value){
                      setState(() {
                        isChecked = value;
                      });
                    
                    },
                  ),
                ],
              ),

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
    );

  }
}