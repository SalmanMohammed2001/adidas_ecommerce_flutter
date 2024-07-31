import 'package:adidas_ecommerce/components/custom_button/custom_button1.dart';
import 'package:adidas_ecommerce/components/custom_test/custom_text.dart';
import 'package:adidas_ecommerce/components/custom_text_field/custom_text_field1.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



              const Row(
                children: [
                  BackButton(),
                  CustomText(
                    text: "Reset Your Password",
                    fontsize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),


              const SizedBox(
                height: 2,
              ),
              CustomText(text: "Insert Your Email",fontsize: 14,fontWeight: FontWeight.w300,),
              const SizedBox(
                height: 10,
              ),
              CustomTextField1(
                  label: "email",
                  prefixIcon: Icons.email,
                  controller: emailController),

              const SizedBox(
                height: 25,
              ),
              CustomButton1(
                size: size,
                text: "Send  Reset email",
                bgColor: Colors.orange.shade800,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
