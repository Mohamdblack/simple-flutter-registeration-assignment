import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register_assig/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isHidden = true;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //sooyal Logo
          Text(
            "Sign up",
            style: GoogleFonts.courgette(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // login text
          Text(
            "sign up with your email and password to \naccess your account. if you already Have an \naccount, you can login by clicking the \nbutton below.",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          // email txt
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide()),
                hintText: "example@gmail.com",
                labelText: "email",
                labelStyle: const TextStyle(color: Colors.grey),
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // password txt
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              obscureText: isHidden,
              decoration: InputDecoration(
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide()),
                hintText: "type your password here",
                labelText: "password",
                labelStyle: const TextStyle(color: Colors.grey),
                hintStyle: GoogleFonts.poppins(
                    // fontSize: 20,
                    color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                prefixIcon: const Icon(
                  Icons.password,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  icon: Icon(
                    isHidden
                        ? Icons.visibility_off
                        : Icons.remove_red_eye_rounded,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // loginBtn
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "Don't have an account?",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  "Log In",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          // dont have an account
        ],
      ),
    );
  }
}
