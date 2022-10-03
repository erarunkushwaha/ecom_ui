import 'package:ecom_ui/widgets/text_filed.dart';
import 'package:flutter/material.dart';

class RegisterTab extends StatefulWidget {
  const RegisterTab({super.key});

  @override
  State<RegisterTab> createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 25),
          // get capture image
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: MediaQuery.of(context).size.width * 0.15,
              child: const Icon(Icons.add_photo_alternate,
                  color: Colors.grey, size: 70),
            ),
          ),
          const SizedBox(height: 25),
          //input form field
          Form(
            key: formkey,
            child: Column(
              children: [
                // name
                CustomTextField(
                  textEditingController: nameTextEditingController,
                  iconData: Icons.person,
                  hintText: "name",
                  isObsecre: false,
                  enable: true,
                ),
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

                //confirm_password
                CustomTextField(
                  textEditingController: confirmPasswordTextEditingController,
                  iconData: Icons.key,
                  hintText: "Confirm Password",
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
              "Sign UP",
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
