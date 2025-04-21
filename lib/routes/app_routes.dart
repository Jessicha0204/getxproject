import '../pages/add_task_page.dart';
import 'package:get/get.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';
import '../pages/home_page.dart';

class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const add_task = '/add-task';

  static final routes = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: register, page: () => RegisterPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: add_task, page: () => AddTaskPage()),
  ];
}
