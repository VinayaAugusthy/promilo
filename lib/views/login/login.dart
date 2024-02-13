import 'package:flutter/material.dart';
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
                    ),
                  ),
                ),
                kheight(size.height / 30),
                const Text(
                  'Please Sign in to continue',
                  style: TextStyle(
                    fontSize: 18,
                  ),
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
                ),
                kheight(10),
                Row(
                  children: [
                    SizedBox(
                      width: size.width / 2,
                    ),
                    const Text('Sign In With OTP'),
                  ],
                ),
                kheight(10),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18,
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
                    const Text(
                      'Forget Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                kheight(10),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(
                    onPressed: isSubmitEnabled ? submitForm : null,
                    child: const Text('Submit'),
                  ),
                ),
                kheight(10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color.fromARGB(78, 158, 158, 158),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Or'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color.fromARGB(78, 158, 158, 158),
                      ),
                    ),
                  ],
                ),
                kheight(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: size.width / 10,
                      width: size.width / 10,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/linkedin.png',
                      height: size.width / 10,
                      width: size.width / 10,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/facebook.jpg',
                      height: size.width / 10,
                      width: size.width / 10,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/insta.png',
                      height: size.width / 10,
                      width: size.width / 10,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/whatsapp.png',
                      height: size.width / 10,
                      width: size.width / 10,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
                kheight(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Buisness User?'),
                    Text('Don\'t have an account?'),
                  ],
                ),
                kheight(10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Login Here'),
                    Text('Sign Up'),
                  ],
                ),
                kheight(10),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'By continuing you are agree to',
                        style: TextStyle(fontSize: 16),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "promilo's  ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Terms of use & privacy policy',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}
