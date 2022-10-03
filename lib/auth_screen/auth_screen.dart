import 'package:ecom_ui/auth_screen/login_tab.dart';
import 'package:ecom_ui/auth_screen/register_tab.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.purpleAccent],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          title: const Text(
            "iShop",
            style: TextStyle(
                fontSize: 31, fontWeight: FontWeight.bold, letterSpacing: 3),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Login",
                icon: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
              ),
              Tab(
                text: "Registraion",
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pinkAccent, Colors.purpleAccent],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: const TabBarView(
            children: [LoginTab(), RegisterTab()],
          ),
        ),
      ),
    );
  }
}
