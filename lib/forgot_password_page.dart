import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sign_in_ui/sign_in.dart';
import 'package:sign_in_ui/verification_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text("Forgot password")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot Your Password?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const Gap(8),
            const Text(
              "No worries, you just need to type your email address or username and we will send the verification code.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const Gap(32),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                disabledBorder: InputBorder.none,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                label: Text("Email"),
                fillColor: Color(0xffF1F4FA),
              ),
            ),
            const Gap(18),
            GestureDetector(
              onTap: () {
                Get.to(() => const VerificationPage());
              },
              child: const PrimaryButton(
                text: "RESET MY PASSWORD",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
