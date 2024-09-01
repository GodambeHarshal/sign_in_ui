import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sign_in_ui/create_password_page.dart';
import 'package:sign_in_ui/sign_in.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifiaction Page"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter Verification Code",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const Gap(8),
            const Text(
              "Enter code that we have sent to your",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const Row(
              children: [
                Text(
                  "email",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Gap(4),
                Text(
                  "hazxxxxx@gmail.com",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Gap(32),
            Row(
              children: [
                Container(
                  height: 58,
                  width: 66,
                  color: const Color(0xffF1F4FA),
                  child: const Center(
                    child: Text(
                      "5",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff090A0A)),
                    ),
                  ),
                ),
                const Gap(21),
                Container(
                  height: 58,
                  width: 66,
                  color: const Color(0xffF1F4FA),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff090A0A)),
                    ),
                  ),
                ),
                const Gap(21),
                Container(
                  height: 58,
                  width: 66,
                  color: const Color(0xffF1F4FA),
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff090A0A)),
                    ),
                  ),
                ),
                const Gap(21),
                Container(
                  height: 58,
                  width: 66,
                  color: const Color(0xffF1F4FA),
                  child: const Center(
                    child: Text(
                      "",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff090A0A)),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(40),
            GestureDetector(
              onTap: () {
                Get.to(() => const CreatePasswordPage());
              },
              child: const PrimaryButton(
                text: "VERIFY",
              ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xff5D5FEF),
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "VeriFy",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            const Gap(24),
            const Center(
              child: Text("Resend Code",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff5D5FEF),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
