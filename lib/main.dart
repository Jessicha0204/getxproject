import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/task_controller.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';
import 'controllers/auth_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Auth',
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.routes,
    );
  }
}
