import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/App%20pages/Home.dart';
import 'package:flutter_application_4/view/backgrond&navbar/navbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool ishidden_for__confirim_password = true;

  bool ishidden_for_password = true;

  void Visibility_for_password() {
    setState(() {
      ishidden_for_password = !ishidden_for_password;
    });
  }

  void Visibility_for__confirim_password() {
    setState(() {
      ishidden_for__confirim_password = !ishidden_for__confirim_password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 40, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
                width: 70,
                child: Image(
                  image: AssetImage('assets/images/hmada.jpg'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  labelText: 'first name ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  labelText: 'last name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  labelText: 'username ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  labelText: 'Email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: ishidden_for_password,
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  labelText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: Visibility_for_password,
                    icon: ishidden_for_password
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: ishidden_for__confirim_password,
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  labelText: 'Confirim password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: Visibility_for__confirim_password,
                    icon: ishidden_for__confirim_password
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navbar()),
                  );
                  print('Sign Up button tapped');
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1, // Adjust thickness if needed
                      color: Colors.grey, // Divider color
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: Colors.grey, // Text color
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1, // Adjust thickness if needed
                      color: Colors.grey, // Divider color
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/google.png'),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/facebook.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
