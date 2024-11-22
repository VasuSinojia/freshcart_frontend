import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.title,
    required this.controller,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.black54),
          ),
          TextField(
            controller: widget.controller,
            obscureText: showPassword,
            cursorColor: Get.theme.primaryColor,
            decoration: InputDecoration(
              focusColor: Get.theme.primaryColor,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Get.theme.primaryColor),
              ),
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
