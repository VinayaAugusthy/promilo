import 'package:flutter/material.dart';
import 'package:promilo/controllers/login/login.dart';
import 'package:promilo/controllers/login/login_validation.dart';
import 'package:promilo/views/login/widgets/separator.dart';
import 'package:promilo/views/login/widgets/social_media.dart';
import 'package:promilo/views/login/widgets/terms_privacy.dart';
import 'package:promilo/models/core/colors.dart';
import 'package:promilo/models/core/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoginButtonEnabled = false;
  bool emailTapped = false;
  bool passwordTapped = false;
  void _validateFields() {
    setState(() {
      isLoginButtonEnabled =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();

    emailController.addListener(_validateFields);
    passwordController.addListener(_validateFields);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  validator: (value) => validateEmail(value!),
                  onTap: () {
                    setState(() {
                      emailTapped = true;
                    });
                  },
                ),
                kheight(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                  validator: (value) => validatePassword(value!),
                  onTap: () {
                    setState(() {
                      passwordTapped = true;
                    });
                  },
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
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      backgroundColor: isLoginButtonEnabled
                          ? MaterialStateProperty.all(primary)
                          : MaterialStateProperty.all(Colors.blue.shade100),
                    ),
                    onPressed: () {
                      isLoginButtonEnabled
                          ? login(emailController.text.toString(),
                              passwordController.text.toString(), context)
                          : null;
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
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
