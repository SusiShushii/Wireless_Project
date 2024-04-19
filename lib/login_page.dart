import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/my_button.dart'; 


class LoginPage extends StatefulWidget{
  final Function()? onTap;  
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method  
  void signUserIn() async{

    //show loading circle
    showDialog(
      context: context, 
      builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
    );

    //sign in
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, 
        password: passwordController.text,
        
      );  
      Navigator.pop(context);
    } on FirebaseAuthException catch (e){
      Navigator.pop(context);
        if (e.code.length>1){
          wrongEmailMessage();
        }
        
      }
      
      //pop loading circle
      
    
  }
  void wrongEmailMessage(){
        showDialog(
          context: context,
          builder: (context){
            return const AlertDialog(
              title: Text('Incorrect Email or Password'),
            );
          }
        );
    }

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children:  [
              const SizedBox(height: 25),
              
              // welcome back
                Text('Login',
                  style: 
                  TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              const SizedBox(height: 25),
            
              //username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
            
              const SizedBox(height: 10,),
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              
              const SizedBox(height: 10,),
              //forget password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '',
                      style: TextStyle(color: Colors.grey[600],)
                      ),
                  ],
                ),
              ),
            const SizedBox(height: 25,),
            
            //sign in button
            MyButton(
              text: "Sign in",
              onTap: signUserIn,
            ),
            const SizedBox(height: 50,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ))
              ],),
            ),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: widget.onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Not a member?'),
                const SizedBox(width: 4,),
                Text('Register Now',
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              ],),
            )
             
            ],),
          ),
        ),
      ),
    );
  }
}
