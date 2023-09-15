import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 216, 227, 229),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 253, 253, 253),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                          spreadRadius: 2)
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(labelText: "Name"),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration:
                              const InputDecoration(labelText: "E-mail"),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration:
                              const InputDecoration(labelText: "Password"),
                        ),
                        Center(
                          child: Container(
                            color: Colors.black,
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "SignUp",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 30,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Facebook"),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Instagram",
                  style: TextStyle(color: Colors.pink),
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
