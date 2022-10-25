import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  final TextEditingController dateInput;
  final String? title;

  const DatePicker({
    super.key,
    required this.dateInput,
    this.title = '',
  });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.dateInput,
      //editing controller of this TextField
      decoration: InputDecoration(
        icon: const Icon(Icons.calendar_today), //icon of text field
        labelText: widget.title, //label text of field
      ),
      readOnly: true,
      //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(
              1950), //DateTime.now() - not to allow to choose before today.
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          // DateFormat('dd/MM/yyyy').format(pickedDate);

          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          setState(() {
            // widget.date = pickedDate;
            widget.dateInput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {}
      },
    );
  }
}
