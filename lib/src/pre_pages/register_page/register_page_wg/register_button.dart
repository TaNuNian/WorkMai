import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workmai/methods/Authentication.dart';
import 'package:workmai/model/account.dart';
import 'package:workmai/src/decor/gradients.dart';

class RegisterButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Account account;

  const RegisterButton({
    super.key,
    required this.account,
    required this.formKey,
  });
  bool isPasswordStrong(String password) {
    return password.length >= 8;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .sizeOf(context)
          .width * 0.5,
      height: MediaQuery
          .sizeOf(context)
          .height * 0.06,
      decoration: BoxDecoration(
        gradient: crossLinearGradient,
        borderRadius: BorderRadius.circular(
            (MediaQuery
                .sizeOf(context)
                .height * 0.06) / 2),
      ),
      child: ElevatedButton(
        onPressed: () async{
          if (formKey.currentState != null && formKey.currentState!.validate()) {
            formKey.currentState?.save();
            if (account.password == account.confirmPassword) {
              if (isPasswordStrong(account.password)) {
                print("email= ${account.email}, password= ${account.password}");
                bool success = await signUp(context, account);
                if (success){
                  formKey.currentState?.reset();
                }
              } else {
                print('password = ${account.password.toString()}');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('รหัสผ่านต้องมีอย่างน้อย 8 ตัวอักษร')),
                );
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('ยืนยันรหัสผ่านผิดพลาด')),
              );
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('โปรดกรอกข้อมูลให้ถูกต้อง')),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Center(
          child: Text(
            'ลงทะเบียน',
            style: GoogleFonts.sarabun(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
