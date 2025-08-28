import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/enum/pos_text_formfield_validation_rule.dart';
import 'package:pos/helper/pos_text_formfield.dart';
import 'package:pos/helper/style.dart';
import 'package:pos/screens/otp_screen.dart';

class ForgetpasswordScreen extends StatefulWidget {
  const ForgetpasswordScreen({super.key});

  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              SizedBox(height: 40,),
              Text(
                "Forget Password",
                style:  GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, 
                  fontSize: 32,
                  color: StyleColor.primary
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16,),
              Text(
                "It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32,),
              PosTextFormfield(
                onChanged: (p0) {
                  setState(() {
                    
                  });
                },
                placeholder: "Email I'D/ Mobile Number",
                rule: PosTextFormfieldValidationRule.email,
                isObsecure: false,
                validator: (p0) {
                  RegExp emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                  if(p0 == null || p0.isEmpty){
                    return 'Please Input Your Email !';
                  }
                  if(!emailRegex.hasMatch(p0)){
                    return 'Invalid Email !';
                  }
                  return null;
                },
          
              ),
              SizedBox(height: 24,),
              TextButton(
                onPressed: 
                  (_formkey.currentState?.validate() ?? false ) ? () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=> OTPScreen())
                    );
                  } : null,
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(30),
                  shadowColor: WidgetStatePropertyAll(
                    StyleColor.primary.withValues(alpha: 0.25),
                  ),
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) => states.contains(WidgetState.disabled) ? StyleColor.disable : StyleColor.primary,
                  ),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(18)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)
                    ),
                  )
                  
                ),
                child: Text(
                  "Continue",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
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