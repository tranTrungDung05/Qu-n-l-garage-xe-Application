import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 17, 46, 86),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextField(decoration: const InputDecoration(labelText: 'Email')),
            SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.go('/dashboard');
              },
              child: const Text("Login"),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                context.go('/register_screen.dart');
              },
              child: const Text("Don't have an account? Register"),
            ),
          ],
        ),
      ),
    );
  }
}

//note: thêm snackbar khi login thất bại
//lỗi route register screen
