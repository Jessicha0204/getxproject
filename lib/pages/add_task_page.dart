import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/task_controller.dart';

class AddTaskPage extends StatelessWidget {
  final taskC = Get.find<TaskController>();
  final titleC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Tugas')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleC,
              decoration: InputDecoration(labelText: 'Judul Tugas'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (titleC.text.trim().isNotEmpty) {
                  taskC.addTask(titleC.text);
                  Get.back();
                } else {
                  Get.snackbar('Oops', 'Judul tugas tidak boleh kosong');
                }
              },
              child: Text('Simpan Tugas'),
            )
          ],
        ),
      ),
    );
  }
}
