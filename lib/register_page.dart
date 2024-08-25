import 'package:flutter/material.dart';
import 'package:project/first_page.dart';
import 'package:project/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              top: 35, left: 23, right: 23
            ),
            
            child: Column(
              children: [
                TextField(
                  
                  decoration: InputDecoration(
                    hintText: "Username",
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
          
                  decoration: InputDecoration(
          
                    hintText: "Email",
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
                  obscureText: true,
          
                  decoration: InputDecoration(
          
                    hintText: "Password",
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
                  obscureText: true,
          
                  decoration: InputDecoration(
          
                    hintText: "Confirm Password",
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
                            return const LoginPage();
                          })
                      );
                    },
          
                    child: const Text("Agree and Register"),
          
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
                    color: Color.fromARGB(255, 1, 1, 1)
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
                                      return const LoginPage();
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
                                      return const LoginPage();
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
                                      return const LoginPage();
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