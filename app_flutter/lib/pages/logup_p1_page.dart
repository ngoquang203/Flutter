import 'package:app_flutter/values/app_assets.dart';
import 'package:app_flutter/values/app_colors.dart';
import 'package:app_flutter/values/app_style.dart';
import 'package:flutter/material.dart';

class LogUpPage1 extends StatefulWidget {
  LogUpPage1({super.key});

  @override
  State<LogUpPage1> createState() => _LogUpPage1State();
}

class _LogUpPage1State extends State<LogUpPage1> {
  bool _passwordLogup = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.primaryApp,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Sign Up',
                  style: AppStyle.h1,
                ),
              ),
              const Text(
                'Lets Know about yourself',
                style: AppStyle.h4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAsseet.freepikFingerprint),
                  Image.asset(AppAsseet.freepikcharacter),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter name',
                              hintStyle: AppStyle.h4.copyWith(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter roll no.',
                              hintStyle: AppStyle.h4.copyWith(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter email id',
                        hintStyle: AppStyle.h4.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(color: AppColors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter email id',
                              hintStyle: AppStyle.h4.copyWith(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(70, 50),
                          backgroundColor: AppColors.primaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Send OTP',
                          style: AppStyle.h4.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter OTP',
                        hintStyle: AppStyle.h4.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      obscureText: !_passwordLogup,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordLogup = !_passwordLogup;
                            });
                          },
                          icon: Icon(
                            _passwordLogup
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter Password',
                        hintStyle: AppStyle.h4.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                    backgroundColor: AppColors.primaryColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Authenticate',
                    style: AppStyle.h4.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: AppStyle.h4.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
