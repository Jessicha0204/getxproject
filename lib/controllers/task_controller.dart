import 'package:get/get.dart';
import '../models/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;

  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  void toggleTask(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    tasks.refresh(); // agar UI update
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }
}
