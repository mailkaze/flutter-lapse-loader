import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> lapseData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    DateTime startDate = DateTime.parse(lapseData['startDate']);
    DateTime endDate = DateTime.parse(lapseData['endDate']);
    DateTime today = DateTime.now();
    Duration lapse = endDate.difference(startDate);
    Duration progress = today.difference(startDate);
    print('lapse: ${lapse.inDays} dias');
    print('progress: ${progress.inDays} dias');
    print('rest: ${(lapse - progress).inDays} días');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.lightGreen.shade300,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'lapse: ${lapse.inDays} dias',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'progress: ${progress.inDays} dias',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'rest: ${(lapse - progress).inDays} días',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
