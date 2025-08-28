

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/helper/style.dart';
import 'package:pos/screens/resetPassword_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              SizedBox(height: 40,),
              Text(
                "Enter OTP",
                style:  GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, 
                  fontSize: 32,
                  color: StyleColor.primary
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16,),
              Text(
                "Enter the OTP code we just sent you on your registered Email/Phone number",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Container(
                    width: 56,
                    height: 70,
                    decoration: BoxDecoration(
                      color: StyleColor.filledBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 56,
                    height: 70,
                    decoration: BoxDecoration(
                      color: StyleColor.filledBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 56,
                    height: 70,
                    decoration: BoxDecoration(
                      color: StyleColor.filledBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 56,
                    height: 70,
                    decoration: BoxDecoration(
                      color: StyleColor.filledBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 56,
                    height: 70,
                    decoration: BoxDecoration(
                      color: StyleColor.filledBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 32,),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=> ResetpasswordScreen())
                  );
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(30),
                  shadowColor: WidgetStatePropertyAll(
                    StyleColor.primary.withValues(alpha: 0.25),
                  ),
                  backgroundColor: WidgetStatePropertyAll(StyleColor.primary),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(18)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)
                    ),
                  )
                  
                ),
                child: Text(
                  "Reset Password",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 16,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't get OTP? ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      )
                    ),
                    TextSpan(
                      text: "Resend OTP",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: StyleColor.primary
                      )
                    )
                  ],
                  
                  
                )
              ),
            ],
          ),
        ),
      ),
    
    );
  }
}