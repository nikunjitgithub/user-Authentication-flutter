// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'otp_page2.dart'; // Import OTPPage
// import 'package:firebase_database/firebase_database.dart';
// import "firebase_option.dart";

// Future <void> main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SignUpPage(),
//     );
//   }
// }

class SignUpPage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
        flexibleSpace: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          color: Colors.blue, // Color the app bar background with blue
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white, // Color the app bar text with white
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: SignUpForm(),
      ),
      bottomNavigationBar: BottomAppBar(
       child: Container(
          height: 60.0,
          alignment: Alignment.center,
          color: Colors.blue, // Color the bottom app bar with blue
          child: ElevatedButton(
            onPressed: () {
              // Navigate to OTP page after sign-up
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPPage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Color the button with blue
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white, // Color the button text with white
              ),
            ),
          ),
        ),
      ), 
    );
  }
}

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
        ),
      
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child:  TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
        ),
         Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
        ),
         Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'University',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}