// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project/login_page.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            
            children: [
              
              
              SizedBox(
                height: screenHeight * .25,
              ),

              Image.asset("images/Successmark.png", width: 180,height: 150,),
          
            const Text("Password Changed!", 
                            style: TextStyle(
                              color: Color.fromARGB(255, 85, 91, 224),
                              //fontFamily: ur,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              
                              ),
                              ),
          
            const SizedBox(
              height: 10,
            ),
          
            const SizedBox(
              width: 300,
              
              //padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text("Your password has been changed successfully.",
                    style: TextStyle(
                      
                      color: Color.fromARGB(255, 106, 115, 125),
                      fontSize: 18
                    ),
                    textAlign: TextAlign.center,),
            ),

            const SizedBox(
              height: 25,
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
            
                      child: const Text("Back to Login",
                      style: TextStyle(
                        fontSize: 16
                      ),),
            
                      ),
                      
            
            
                  
                ],
              ),
        ),
          ),

                 
        );
      
  }
}