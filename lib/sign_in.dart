import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sign_in_ui/forgot_password_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.arrow_back),
        // ),
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(
        //       right: 10,
        //     ),
        //     child: Icon(
        //       Icons.notifications,
        //       color: Colors.red,
        //     ),
        //   )
        // ],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          "Log in",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  label: Text("Email Address"),
                  fillColor: Color(0xffF1F4FA),
                ),
              ),
            ),
            const Gap(18),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                disabledBorder: InputBorder.none,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                label: Text("Password"),
                fillColor: Color(0xffF1F4FA),
              ),
            ),
            const Gap(18),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ForgotPasswordPage());
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B46D2)),
                ),
              ),
            ),
            const Gap(42),
            const PrimaryButton(
              text: "LOG IN",
            ),
            const Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                GestureDetector(
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Color(0xff5D5FEF), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Gap(41),
            // Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xffDEDEDE),
                  ),
                ),
                const Gap(2),
                const Text(
                  "OR",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Gap(2),
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xffDEDEDE),
                  ),
                ),
              ],
            ),
            const Gap(16),
            const Column(
              children: [
                SignInWidget(
                  img: 'assets/images/Group.png',
                  buttonname: 'Sign in with Google',
                ),
                Gap(16),
                SignInWidget(
                  img: 'assets/images/Apple_logo_black 1.png',
                  buttonname: 'Sign in with Apple',
                ),
                Gap(16),
                SignInWidget(
                  img: 'assets/images/Facebook_icon_(black) 1.png',
                  buttonname: 'Sign in with Facebook',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SignInWidget extends StatelessWidget {
  final String img;
  final String buttonname;
  const SignInWidget({
    super.key,
    required this.img,
    required this.buttonname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: const Color(0xff999999))),
      child: Row(
        children: [
          const SizedBox(width: 18),
          Image.asset(img),
          const Gap(45),
          Text(
            buttonname,
            // ignore: prefer_const_constructors
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  const PrimaryButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Color(0xff5D5FEF),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
