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
              lapseData['startDate'],
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              lapseData['endDate'],
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              lapseData['lapse'],
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
