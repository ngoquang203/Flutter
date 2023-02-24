import 'package:app_flutter/pages/logup_p1_page.dart';
import 'package:app_flutter/values/app_assets.dart';
import 'package:app_flutter/values/app_colors.dart';
import 'package:app_flutter/values/app_style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.primaryApp),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(AppAsseet.undrawlogin),
                const SizedBox(
                  height: 34,
                ),
                Text(
                  "Welcome Back!",
                  style: AppStyle.h1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Please enter your details.',
                      style: AppStyle.h1.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter username',
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: const TextStyle(fontSize: 14),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.primaryColor,
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Recovery Password',
                        style: AppStyle.h4.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fixedSize: const Size(250, 45),
                      backgroundColor: AppColors.primaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: AppStyle.h4.copyWith(
                        color: AppColors.pink,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: AppStyle.h4.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> LogUpPage1()));
                      },
                      child: Text(
                        'Register now',
                        style: AppStyle.h4.copyWith(
                          fontSize: 14,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
