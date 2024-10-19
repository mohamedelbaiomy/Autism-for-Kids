import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  final Color clr;
  const CustomBackButton({
    super.key,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: clr,
      ),
    );
  }
}
