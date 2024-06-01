import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../register_page/register_page.dart';

class CreateUser extends StatelessWidget {
  const CreateUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffE3E3E3),
          elevation: 0,
        ),
        child: Text(
          'สร้างบัญชี',
          style: GoogleFonts.sarabun(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
