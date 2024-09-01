import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sign_in_ui/sign_in.dart';

class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Passwaord"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Password",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const Gap(8),
            const Text(
              "Create your new password to login",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const Gap(32),
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
            const Gap(20),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                disabledBorder: InputBorder.none,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                label: Text("Confirm Password"),
                fillColor: Color(0xffF1F4FA),
              ),
            ),
            const Gap(20),
            const PrimaryButton(
              text: "CREATE PASSWORD",
            ),
          ],
        ),
      ),
    );
  }
}
