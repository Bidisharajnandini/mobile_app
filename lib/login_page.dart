import 'package:flutter/material.dart';
import 'package:project/first_page.dart';
import 'package:project/forgot_password_page.dart';
import 'package:project/lists_available.dart';
import 'package:project/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _isObscured;

  @override
  void initState()
  {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left:45, top: 90),
              child: TextButton(
                  onPressed: (){
                    Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const FirstPage();
                              })
                          );
                  }, 
                  
                  style: TextButton.styleFrom(
                    alignment: const Alignment(0, 0),
                    padding: const EdgeInsets.only(left: 8.0),
                    shape: RoundedRectangleBorder(
                            side: const BorderSide(
                            color: Color.fromARGB(255, 212, 213, 225),
                            width: 1,
                            style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(16)
                          ),
                    minimumSize: const Size(50.0, 50.0),
                     
                  ),
                  child: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 85, 91, 224)),
                  ),
            ),
        
          const SizedBox(
            height: 37,
          ),
        
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 23,
              ),
        
              Text("Welcome back! Glad \nto see you, Again!", 
                  style: TextStyle(
                    color: Color.fromARGB(255, 85, 91, 224),
                    //fontFamily: ur,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    
                    ),
                    ),
        
            ],
          ),
        
          Container(
            padding: const EdgeInsets.only(
              top: 53, left: 23, right: 23
            ),
            
            child: Column(
              children: [
                TextField(
                  
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    fillColor: const Color.fromARGB(255, 245, 245, 245),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                    
                  ),
                ),
          
                const SizedBox(
                  height: 20,
                ),
          
                TextField(
                  obscureText: _isObscured,
          
                  decoration: InputDecoration(
          
                    hintText: "Enter your password",
                    fillColor: const Color.fromARGB(255, 245, 245, 245),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    )
                    
                  ),
                ),
          
                Row(
                  children: [
                    const SizedBox(
                      width: 210,
                    ),
          
                    TextButton(
                    style: TextButton.styleFrom(
                        //padding: const EdgeInsets.only(left: 20),
                        foregroundColor: const Color.fromARGB(255, 106, 112, 124),
                      ),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const ForgotPassword();
                          })
                      );
                    }, 
                    child: const Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 16
                    ),))
                  ],
                ),
          
                const SizedBox(
                  height: 45,
                ),
          
                TextButton(
            
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 85, 91, 224),
                      foregroundColor: Colors.white,
                      //fixedSize: const Size(2000.0, 50.0),
                      //padding: const EdgeInsets.only(left:165, right: 165, top: 20, bottom: 20),
                      
          
                      shape: RoundedRectangleBorder(
                        
                        side: const BorderSide(
                        color: Color.fromARGB(255, 85, 91, 224),
                        width: 1,
                        style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(7)
                      ),
                      minimumSize: Size(screenWidth - 40.0, 60.0),
                    ),
          
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const ListsAvailable();
                          })
                      );
                    },
          
                    child: const Text("Login",
                    style: TextStyle(
                      fontSize: 16
                    ),
                    ),
          
                    ),
          
          
          
                
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 23, right:23, top: 20),

            child: Center(
              child: Column(
                children: [
                  const Text("Or Login with",
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 1),
                    fontSize: 16
                  ),),

                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ListsAvailable();
                                    })
                                );
                        }, 
                        
                        style: TextButton.styleFrom(
                          //alignment: const Alignment(0, 0),
                          //padding: const EdgeInsets.only(left: 8.0),
                          shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                  color: Color.fromARGB(255, 212, 213, 225),
                                  width: 1,
                                  style: BorderStyle.solid
                                ), borderRadius: BorderRadius.circular(16)
                                ),
                          minimumSize: const Size(110.0, 70.0),
                          
                        ),
                        child: Image.asset("images/facebook.png", width: 30, height: 30,),
                        ),

                        const SizedBox(
                          width: 16,
                        ),

                        TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ListsAvailable();
                                    })
                                );
                        }, 
                        
                        style: TextButton.styleFrom(
                          //alignment: const Alignment(0, 0),
                          //padding: const EdgeInsets.only(left: 8.0),
                          shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                  color: Color.fromARGB(255, 212, 213, 225),
                                  width: 1,
                                  style: BorderStyle.solid
                                ), borderRadius: BorderRadius.circular(16)
                                ),
                          minimumSize: const Size(110.0, 70.0),
                          
                        ),
                        child: Image.asset('images/google.png', width: 30, height: 30,),
                        ),

                        const SizedBox(
                          width: 16,
                        ),

                        TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ListsAvailable();
                                    })
                                );
                        }, 
                        
                        style: TextButton.styleFrom(
                          //alignment: const Alignment(0, 0),
                          //padding: const EdgeInsets.only(left: 8.0),
                          shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                  color: Color.fromARGB(255, 212, 213, 225),
                                  width: 1,
                                  style: BorderStyle.solid
                                ), borderRadius: BorderRadius.circular(16)
                                ),
                          minimumSize: const Size(110.0, 70.0),
                          
                        ),
                        child: Image.asset('images/apple.jpg', width: 30, height: 30,),
                        ),
                    ],
                  ),

                  const SizedBox(
                    height: 55,
                  ),

                  TextButton(
          
                  style: TextButton.styleFrom(
                    
                    foregroundColor: const Color.fromARGB(255, 53, 194, 194),
                  ),

                  onPressed: (){
                    Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const RegisterPage();
                                    })
                                );
                  },

                  //child: const Text("Don't have an account? Register Now", style: TextStyle(decoration: TextDecoration.underline, decorationColor: Color.fromARGB(255, 53, 194, 194)),),
                  child: RichText(
                    text: const TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 85, 91, 224),
                        fontSize: 16
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Register Now",
                          style: TextStyle(
                            color: Color.fromARGB(255, 53, 194, 194),
                            fontSize: 16
                          )
                        )
                      ]
                    )),
                  )
                ],
              ),
            ),

            
          )
        
          ],
        ),
      ),
    );
  }
}

