import 'package:btms/Pages/ResultInfo/controller/result_info_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:btms/Widgets/radio_button.dart';
import 'package:btms/Widgets/status_type_button.dart';
import 'package:btms/Widgets/status_type_button1.dart';
import 'package:btms/Widgets/status_type_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultInfoScreen extends GetView<ResultInfoController> {
  String _selectedPoint = 'Đạt';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Get.put(RadioButtonController());
    // return Obx(() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back(closeOverlays: true);
          },
        ),
        elevation: 1,
        title: Column(
          children: [
            Text(
              'Chi tiết chấm điểm',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(children: [
            Column(
              children: [
                Container(
                  child: Text(
                    "Các tiêu chí chấm điểm",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Thái độ thi đấu",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      StatusTypeButton(
                        value: "Đạt",
                        title: "Đạt",
                        isPass: true,
                      ),
                      StatusTypeButton(
                          value: "Không đạt",
                          title: "Không đạt",
                          isPass: false),
                      // StatusTypeButton(
                      //     value: "Đạt", title: "Đạt", isPass: true),
                      // StatusTypeButton(
                      //     value: "Không đạt",
                      //     title: "Không đạt",
                      //     isPass: false),
                      // ListTile(
                      //   leading: Radio<String>(
                      //     value: 'male',
                      //     groupValue: _selectedGender,
                      //     onChanged: (value) {
                      //       setState(() {
                      //         _selectedGender = value!;
                      //       });
                      //     },
                      //   ),
                      //   title: const Text('Male'),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        child: Text(
                          "Giọng hót thi đấu",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      StatusTypeButton1(
                        value: "Đạt",
                        title: "Đạt",
                        isPass: true,
                      ),
                      StatusTypeButton1(
                          value: "Không đạt",
                          title: "Không đạt",
                          isPass: false),
                      // Row(
                      //   children: [
                      //     Radio(
                      //       value: "Không đạt",
                      //       groupValue: "",
                      //       onChanged: (value) {},
                      //       activeColor: Colors.green,
                      //       fillColor:
                      //           MaterialStateProperty.all(Colors.greenAccent),
                      //     ),
                      //     const Text(
                      //       "Không đạt",
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w500,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dáng vẻ thi đấu",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      StatusTypeButton2(
                        value: "Đạt",
                        title: "Đạt",
                        isPass: true,
                      ),
                      StatusTypeButton2(
                          value: "Không đạt",
                          title: "Không đạt",
                          isPass: false),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ghi chú:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          "Chim nhảy yếu quá, trừ điểm",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Get.toNamed(Routes.resultBird);
                //   },
                //   child: Container(child: Text(""),),
                // )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
