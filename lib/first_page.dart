import 'package:flutter/material.dart';
import 'package:project/lists_available.dart';
import 'package:project/register_page.dart';
import 'package:project/login_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
            child: Column(
              
              children: [
                  //const Spacer(),
                  const SizedBox(
                    height: 550.0,
                  ),
        
                  TextButton(
            
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 85, 91, 224),
                      foregroundColor: Colors.white,
                      
                      //fixedSize: const Size(2000.0, 50.0),
                      //padding: const EdgeInsets.all(10.0),
        
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
        
                    child: const Text("Login", 
                    style: TextStyle(
                      fontSize: 16
                    ),),
        
                    ),
        
                    const SizedBox(
                      height: 15.0,
                    ),
                    
                    TextButton(
            
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 85, 91, 224),
        
                      shape: RoundedRectangleBorder(side: const BorderSide(
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
                            return const RegisterPage();
                          })
                      );
                    },
        
                    child: const Text("Register",
                    style: TextStyle(
                      fontSize: 16
                    ),),
        
                    ),
        
                    const SizedBox(
                      height: 120.0,
                    ),
        
                    TextButton(
            
                    style: TextButton.styleFrom(
                      
                      foregroundColor: const Color.fromARGB(255, 53, 194, 194),
                    ),
        
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const ListsAvailable();
                          }
                        )
                      );
                    },
        
                    child: const Text("Continue as a guest", 
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline, 
                      decorationColor: Color.fromARGB(255, 53, 194, 194)
                      ),
                    ),
        
                    )
                    
              ],
            )
          ),
      ),
    );
  }
}