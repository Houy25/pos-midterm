

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/enum/pos_text_formfield_validation_rule.dart';
import 'package:pos/helper/pos_text_formfield.dart';
import 'package:pos/helper/style.dart';
import 'package:pos/screens/login_screen.dart';

class ResetpasswordScreen extends StatefulWidget {
  const ResetpasswordScreen({super.key});

  @override
  State<ResetpasswordScreen> createState() => _ResetpasswordScreenState();
}

class _ResetpasswordScreenState extends State<ResetpasswordScreen> {
  bool isPassword = true;
  bool onChange = true;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode()); // ot mean focus on formfield te 
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formkey,
          child: ListView(
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            children: [
              SizedBox(height: 56),
              Text(
                "Reset Password",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  color: StyleColor.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipum",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 24),
              
              // text password
              PosTextFormfield(
                placeholder: 'Password',
                isObsecure: isPassword,
                rule: PosTextFormfieldValidationRule.password,
                onChanged: (p0) {
                  setState(() {
                    
                  });
                },
                validator: (p0) {
                  RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                  if( p0 == null || p0.length < 8 ){
                    return 'Password must be at least 8 charater';
                  }
                  if(!passwordRegex.hasMatch(p0)){
                    return 'Password not match ';
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    isPassword = !isPassword;
                    setState(() {});
                  },
                  icon: Icon(
                    isPassword ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                  ), // use cupertinoIcon
                  // icon: Icon(isPasssword ? Icons.visibility_off_outlined : Icons.visibility), // use Icons
                ),
              ),
              SizedBox(height: 16,),
              PosTextFormfield(
                placeholder: 'Confirm Password',
                isObsecure: isPassword,
                rule: PosTextFormfieldValidationRule.password,
                onChanged: (p0) {
                  setState(() {
                    
                  });
                },
                validator: (p0) {
                  RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                  if( p0 == null || p0.length < 8 ){
                    return 'Password must be at least 8 charater';
                  }
                  if(!passwordRegex.hasMatch(p0)){
                    return 'Password not match ';
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    isPassword = !isPassword;
                    setState(() {});
                  },
                  icon: Icon(
                    isPassword ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                  ), // use cupertinoIcon
                  // icon: Icon(isPasssword ? Icons.visibility_off_outlined : Icons.visibility), // use Icons
                ),
              ),
                
              SizedBox(height: 32),
              // login button
              TextButton(
                onPressed: (_formkey.currentState?.validate() ?? false) // check validate button color
                          ? () {

                              Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) => const LoginScreen())
                              );
                          } : null,
                
                style: ButtonStyle(
                  iconColor: WidgetStatePropertyAll(Colors.deepOrangeAccent),
                  elevation: WidgetStatePropertyAll(30),
                  shadowColor: WidgetStatePropertyAll(
                    StyleColor.primary.withValues(alpha: 0.25),
                  ),
                  backgroundColor: WidgetStateProperty.resolveWith(
                    
                    (states)=> states.contains( WidgetState.disabled) ? StyleColor.disable : StyleColor.primary,
                  ),

                  padding: WidgetStatePropertyAll(EdgeInsets.all(18)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(14),
                    ),
                  ),
                ),
                child: Text(
                  "Submiting",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 12),
              ],
          ),
        ),
      ),
    );
  }
}