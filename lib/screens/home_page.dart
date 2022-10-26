import 'package:fl_lapse_loader/widgets/date_picker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  TextEditingController dateInputStart = TextEditingController();
  TextEditingController dateInputEnd = TextEditingController();

  @override
  void initState() {
    dateInputStart.text = "2007-10-27"; //set the initial value of text field
    dateInputEnd.text = "2022-10-27"; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.flight_outlined),
          title: const Text("Lapse Loader"),
          backgroundColor: Colors.lightGreen, //background color of app bar
        ),
        body: Container(
            color: Colors.lightGreen.shade300,
            padding: const EdgeInsets.all(15),
            // height: MediaQuery.of(context).size.width / 3,
            child: Form(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  DatePicker(
                    title: 'Fecha Inicial',
                    dateInput: dateInputStart,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DatePicker(
                    title: 'Fecha Final',
                    dateInput: dateInputEnd,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Calcular'),
                      ),
                      onPressed: () {
                        Map<String, dynamic> lapseData = {
                          'startDate': dateInputStart.text,
                          'endDate': dateInputEnd.text,
                          'lapse': 'hola',
                        };

                        Navigator.pushNamed(context, 'results',
                            arguments: lapseData);
                      },
                    ),
                  )
                ],
              ),
            )));
  }
}
