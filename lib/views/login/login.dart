import 'package:flutter/material.dart';
import 'package:promilo/controllers/login/login_validation.dart';
import 'package:promilo/views/login/widgets/separator.dart';
import 'package:promilo/views/login/widgets/social_media.dart';
import 'package:promilo/views/login/widgets/terms_privacy.dart';
import 'package:promilo/views/widgets/colors.dart';
import 'package:promilo/views/widgets/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isSubmitEnabled = false;

  void checkSubmitButton() {
    setState(() {
      isSubmitEnabled =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  void submitForm() {
    print('Email: ${emailController.text}');
    print('Password: ${passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('promilo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width / 16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight(size.height / 20),
                Center(
                  child: Text(
                    'Hi,Welcome Back!',
                    style: TextStyle(
                      fontSize: size.width / 16,
                      fontWeight: FontWeight.bold,
                      color: primary,
                    ),
                  ),
                ),
                kheight(size.height / 30),
                Text(
                  'Please Sign in to continue',
                  style: TextStyle(fontSize: 18, color: primary),
                ),
                kheight(10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Enter email or mob no',
                  ),
                  validator: validateEmail(emailController.text),
                ),
                kheight(10),
                Row(
                  children: [
                    SizedBox(
                      width: size.width / 2,
                    ),
                    Text(
                      'Sign In With OTP',
                      style: boldPrimaryText(),
                    ),
                  ],
                ),
                kheight(10),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18,
                    color: primary,
                  ),
                ),
                kheight(10),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Enter Password',
                  ),
                  validator: validatePassword(passwordController.text),
                ),
                kheight(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text('Remember me'),
                      ],
                    ),
                    Text(
                      'Forget Password',
                      style: boldPrimaryText(),
                    )
                  ],
                ),
                kheight(10),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(onPressed: () {
                    
                  },
                    // onPressed: isSubmitEnabled ? submitForm : null,
                    child: const Text('Submit'),
                  ),
                ),
                kheight(10),
                const Separator(),
                kheight(20),
                SocialMediaHandlers(size: size),
                kheight(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Buisness User?'),
                    Text('Don\'t have an account?'),
                  ],
                ),
                kheight(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Login Here',
                      style: boldPrimaryText(),
                    ),
                    Text(
                      'Sign Up',
                      style: boldPrimaryText(),
                    ),
                  ],
                ),
                kheight(10),
                const TermsAndPrivacy(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
