import 'package:app_flutter/pages/login_page.dart';
import 'package:app_flutter/values/app_assets.dart';
import 'package:app_flutter/values/app_colors.dart';
import 'package:flutter/material.dart';

class LadingPage extends StatelessWidget {
  const LadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.primaryApp,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAsseet.logohostel),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "DorManu",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onPrimary: AppColors.pink,
                primary: AppColors.primaryColor,
                minimumSize: const Size(300, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
