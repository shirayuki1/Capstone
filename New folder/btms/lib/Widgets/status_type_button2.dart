import 'package:btms/Widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusTypeButton2 extends StatelessWidget {
  final String value;
  final String title;
  final bool isPass;

  const StatusTypeButton2(
      {required this.value, required this.title, required this.isPass});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<RadioButtonController>(builder: (radioButtonController) {
      return InkWell(
        onTap: () => radioButtonController.setStatusType2(value),
        child: Row(
          children: [
            Radio(
                value: value,
                groupValue: radioButtonController.statusType2,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (String? value) {
                  // radioButtonController.setStatusType2(value!);
                }),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            // Text('(${(value == 'Đạt' || isPass) ? 'Đạt' : 'Không đạt'})')
          ],
        ),
      );
    });
  }
}