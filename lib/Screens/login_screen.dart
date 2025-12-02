import 'package:flutter/material.dart';
import 'register.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CSC309'),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 15),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ForgotPassword()),
                  );
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'COUNTING>>> $_counter',
                style: const TextStyle(fontSize: 30),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                  debugPrint('COUNTING>>> $_counter');
                },
                child: const Text('Login'),
              ),

              const SizedBox(height: 25),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Register(),
                    ),
                  );
                },
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
