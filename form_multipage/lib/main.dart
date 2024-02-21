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
        title: Text('Student Information Form'),
      ),
      body: MyFormPage(),
    ));
  }
}

class MyFormPage extends StatefulWidget {
  @override
  _MyFormPageState createState() 
  => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController studentId = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: studentId,
              decoration: InputDecoration(labelText: 'Student ID'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your student ID';
                } else if (value?.length != 11) {
                  return 'Student ID must be 11 digits';
                }
                return null;
              },
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your email';
                } else if (!RegExp(
                        r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                    .hasMatch(value!)) {
                  return 'Enter a valid email address';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DisplayPage(
                      name: name.text,
                      studentId: studentId.text,
                      email: email.text
                    ),
                    )
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayPage extends StatelessWidget {
  final String name;
  final String studentId;
  final String email;

  DisplayPage({required this.name, required this.studentId, required this.email});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Student Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name: $name'),
          Text('Student ID: $studentId'),
          Text('Email:" $email')
        ],
      ),
      ),
    );
  }
}