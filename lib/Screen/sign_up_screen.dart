import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/Screen/home_screen.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Form(
          child: Column(
            children: [
              Spacer(),
              Text(
                'Welcome to our community',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.blue,
                ),
              ),
              Text(
                '\n To get started. please provide your information and create on account.\n',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: nameController,
                  hintText: 'Enter your name. ',
                  obscureText: false,
                  labelText: 'Name'),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: emailController,
                  hintText: 'Enter your name. ',
                  obscureText: false,
                  labelText: 'Email'),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: nameController,
                  hintText: 'Enter your password. ',
                  obscureText: true,
                  labelText: 'Password'),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: nameController,
                  hintText: 'Enter your password again. ',
                  obscureText: true,
                  labelText: 'Re-Password'),
              const SizedBox(
                height: 20,
              ),
              MyButton(onTap: () {}, hinText: 'sign up'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have a member?',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                          ),
                        );
                    }, 
                    child: Text(
                      'Sign in.',
                      style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
