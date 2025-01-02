// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../providers/task_provider.dart';

// class AddTaskScreen extends ConsumerWidget {
//   final TextEditingController _controller = TextEditingController();

//   AddTaskScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Task')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(labelText: 'Task Title'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               child: const Text('Add Task'),
//               onPressed: () {
//                 // ref.read(tasksProvider.notifier).addTask(_controller.text);
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
