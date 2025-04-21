import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/auth_service.dart';
import '../routes/app_routes.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  void login() async {
    bool success = await AuthService.login(
      emailController.text,
      passwordController.text,
    );
    if (success) {
      Get.offAllNamed(AppRoutes.home);
    } else {
      Get.snackbar("Login Failed", "Invalid email or password");
    }
  }

  void register() async {
    bool success = await AuthService.register(
      nameController.text,
      emailController.text,
      passwordController.text,
    );
    if (success) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      Get.snackbar("Registration Failed", "Try again");
    }
  }
}
