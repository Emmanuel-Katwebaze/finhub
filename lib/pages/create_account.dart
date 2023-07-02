import 'package:flutter/material.dart';
import 'package:finhub/firebase_auth/auth.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final universityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _obscureText2 = true;
  bool _isLoading = false;

  handleSubmit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      final email = emailController.value.text;
      final password = passwordController.value.text;
      _isLoading = true;
      await Auth().registerWithEmailAndPassword(email, password, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA8CAEA),
      body: Container(
        child: Form(
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF61B3FEBF),
              borderRadius: BorderRadius.circular(10), // Add border radius
            ),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.only(top: 15),
            constraints: const BoxConstraints(maxHeight: 420, maxWidth: 430),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF2B5BBA),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10), // Adjust the horizontal margin as desired
                  child: TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your user name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "User Name",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA8CAEA),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8CAEA)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "email",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA8CAEA),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8CAEA)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10), // Adjust the horizontal margin as desired
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA8CAEA),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8CAEA)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10), // Adjust the horizontal margin as desired
                  child: TextFormField(
                    controller: confirmpasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password for confirmation';
                      }
                      return null;
                    },
                    obscureText: _obscureText2,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA8CAEA),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8CAEA)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText2 = !_obscureText2;
                          });
                        },
                        child: Icon(_obscureText2
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                //   child: TextFormField(
                //     controller: universityController,
                //      validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return 'Please enter your university';
                //       }
                //       return null;
                //     },
                //     decoration: InputDecoration(
                //       hintText: "University",
                //       hintStyle: const TextStyle(
                //         fontSize: 18,
                //         color: Color(0xFFA8CAEA),
                //       ),
                //       enabledBorder: OutlineInputBorder(
                //         borderSide: const BorderSide(color: Colors.white),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       focusedBorder: const OutlineInputBorder(
                //         borderSide: BorderSide(color: Color(0xFFA8CAEA)),
                //       ),
                //       fillColor: Colors.white,
                //       filled: true,
                //       contentPadding: const EdgeInsets.symmetric(
                //           vertical: 14, horizontal: 30),
                //     ),
                //   ),
                // ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      handleSubmit(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2B5BBA),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 16), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Button border radius
                      ),
                    ),
                    child: _isLoading
                        ? const CircularProgressIndicator()
                        : const Text(
                            'Create Account',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                  ),
                ),
                const Text(
                  "Already Have An Account?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    height: 18.15 / 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2B5BBA),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      height: 18.15 / 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
      ),
    );
  }
}
