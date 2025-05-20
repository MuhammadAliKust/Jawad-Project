import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            // enabled: false,
            maxLines: 1,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.4),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: pwdController,
            // enabled: false,
            maxLines: 1,
            obscureText: false,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'Password must be 6 or more characters',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.4),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cannot be empty.")));
                  return;
                }if (!emailController.text.isEmail) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Kindly enter valid email.")));
                  return;
                }
                if (pwdController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password cannot be empty.")));
                  return;
                }
                if (pwdController.text.length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Password must be 6 or more characters.")));
                  return;
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
