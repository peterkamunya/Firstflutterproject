// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freelancer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Freelancer'),
          centerTitle: true,
          backgroundColor:Color.fromARGB(255, 107, 60, 216),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Services'),
              Tab(text: 'About'),
              Tab(text: 'Contact'),
              Tab(text: 'Sign Up'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ServicesPage(),
            AboutPage(),
            ContactPage(),
            SignUpPage(),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 197, 226, 230),
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Services Page'),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Android Development (Java, Kotlin)\n'
            '- Flutter Development\n'
            '- UI/UX Design\n'
            '- Firebase Integration\n'
            '- RESTful APIs\n'
            '- Version Control (Git)\n'),
   
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Contact Page'),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
 {
  
  final _formKey = GlobalKey<FormState>();
  String _name=" ";
  String _email="";
  String _password="";

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form
      (
        key: _formKey,
        child: Column
        (
          children:
             [
            TextFormField
            (
              decoration: InputDecoration(labelText: 'Name'))
             ]
            )
           )
             );
   
  }
}