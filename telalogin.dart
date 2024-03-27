import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'), 
        ),
         drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),
        BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Login',
        ),
          ],
        ),
     body: Container(  
          color: Colors.grey,  
          child: LoginForm(),  
       ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
       
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'E-mail',
            labelStyle: TextStyle(color: Colors.white),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        
        TextField(
          style: TextStyle(color: Colors.white),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.white),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
         
        ElevatedButton(
          onPressed: () {
            
          },
          child: Text(
            'Enter',
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            minimumSize: MaterialStateProperty.all<Size>(Size(
                double.infinity, 40)), // Set width to fill the available space
          ),
        ),
        SizedBox(
          height: 15,
        ),
         
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New here?',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            
            TextButton(
              onPressed: () {
                 
              },
              child: Text(
                'Create an account',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}