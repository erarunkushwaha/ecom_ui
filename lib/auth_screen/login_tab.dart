import 'package:ecom_ui/widgets/text_filed.dart';
import 'package:flutter/material.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // login image
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              "images/login.png",
              height: MediaQuery.of(context).size.height * 0.40,
            ),
          ),
          Form(
            key: formkey,
            child: Column(
              children: [
                // email
                CustomTextField(
                  textEditingController: emailTextEditingController,
                  iconData: Icons.email,
                  hintText: "Email",
                  isObsecre: false,
                  enable: true,
                ),

                //password
                CustomTextField(
                  textEditingController: passwordTextEditingController,
                  iconData: Icons.key,
                  hintText: "Password",
                  isObsecre: true,
                  enable: true,
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
            ),
            child: const Text(
              "Sign IN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
