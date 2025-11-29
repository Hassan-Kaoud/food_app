import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
   CustomTextField({super.key, required this.hintText, required this.obscureText, required this.controler});
final String hintText;
final bool obscureText;
final TextEditingController controler;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

void initState() {
  _obscureText = widget.obscureText;
  super.initState();
 
}
void togglePasswordVisibility() {
  setState(() {
    _obscureText = !_obscureText;
  });
}
  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      controller: widget.controler,
                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return 'Please enter ${widget.hintText}';
                  }
                  return null;

                },
                obscureText: _obscureText,
                cursorColor: AppColors.primaryColor,
                cursorHeight: 20,
                decoration: InputDecoration(

                  suffixIcon:
                  widget.obscureText
                      ? GestureDetector(
                        onTap: togglePasswordVisibility,
                         
                        
                        child: Icon(
                                            CupertinoIcons.eye_fill,
                                          ),
                      )
                      : null,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ), 
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ), // Set focused border color and width
                  filled: true,
                  fillColor: Colors.white,

                  // Set background colorout
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              )
            
            ;
  }
}