import 'package:flutter/material.dart';
import 'SignupScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginview(), 
    ),
  );
}

class Loginview extends StatelessWidget {
  Loginview({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://media.istockphoto.com/id/1672937273/vector/vertical-purple-black-grainy-gradient-background-abstract-dark-mobile-app-banner-design.jpg?s=612x612&w=0&k=20&c=Zb7zqh6KPviMF9tc8hHJgZtxYTyK7H3Iar2YHGeyAFU=',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxO4rEYrEd-Mss_1ZcregavCH80aHwsxL0g&s',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "FOODIE",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Deliver Favourite Food",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 4, 29), 
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: "example@gmail.com",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                            ),
                          ))),
                          SizedBox(height: 16),
                          TextField(
                            controller: passowrdController,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_rounded,
                                color: Colors.white,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                            ),
                          ))),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 87, 59, 209),
                                padding: EdgeInsets.symmetric(vertical: 25.0),
                                side: BorderSide(color: Colors.white, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => HomeView()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Or",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                    // horizontal: 30.0,
                                    vertical: 15.0,
                                  ),
                                  side: BorderSide(color: Colors.black, width: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Image.network(
                                  'data:image/png;base64,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',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                    // horizontal: 0.0,
                                    vertical: 15.0,
                                  ),
                                  side: BorderSide(color: Colors.black, width: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Image.network(
                                  'data:image/png;base64,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', 
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => SignupView()),
                              );
                            },
                            child: Text(
                              "REGISTER",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
