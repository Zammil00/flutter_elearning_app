import 'package:elearning_app/data/bloc/post/post_bloc.dart';
import 'package:elearning_app/data/repository/api_repository.dart';
import 'package:elearning_app/data/service/data_repository.dart';
import 'package:elearning_app/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(
    dataService: DataService(),
  ));
}

class MyApp extends StatelessWidget {
  final DataService dataService;
  const MyApp({super.key, required this.dataService}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green,
          secondary: Colors.greenAccent,
        ),
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Login E-Learning App',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Identifier',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              height: 50.0, // Increase the height of the button
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
