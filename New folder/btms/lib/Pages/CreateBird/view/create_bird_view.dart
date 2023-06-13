import 'dart:io';

import 'package:btms/Pages/CreateBird/controller/create_bird_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import '../../../Services/GlobalStates/share_states.dart';

class CreateBirdScreen extends GetView<CreateBirdController> {
  bool isDownloading = true;
  final SharedStates sharedStates = Get.find();
  bool showPassword = false;
  String? accountId;
  @override
  Widget build(BuildContext context) {
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
              'Tạo mới hồ sơ chim',
              style: TextStyle(color: Colors.black87),
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
          child: ListView(
            children: [
              // Center(
              //   child: Stack(
              //     children: [
              //       Container(
              //           width: 130,
              //           height: 130,
              //           decoration: BoxDecoration(
              //             border: Border.all(
              //                 width: 4,
              //                 color: Theme.of(context).scaffoldBackgroundColor),
              //             boxShadow: [
              //               BoxShadow(
              //                   spreadRadius: 2,
              //                   blurRadius: 10,
              //                   color: Colors.black.withOpacity(0.1),
              //                   offset: Offset(0, 10))
              //             ],
              //             shape: BoxShape.circle,
              //             image: DecorationImage(
              //               fit: BoxFit.cover,
              //               image:
              //                   // AuthServices.isLoggedIn()
              //                   //     ? NetworkImage(
              //                   //         AuthServices.userLoggedIn.value.imageUrl!,
              //                   //       )
              //                   //     :
              //                   NetworkImage(
              //                       'https://mcss.co.za/images/Member-Login.jpg'),
              //             ),
              //           )),
              //       Positioned(
              //           bottom: 0,
              //           right: 0,
              //           child: Container(
              //             height: 40,
              //             width: 40,
              //             decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               border: Border.all(
              //                 width: 4,
              //                 color: Theme.of(context).scaffoldBackgroundColor,
              //               ),
              //               color: Colors.green,
              //             ),
              //             child: Icon(
              //               Icons.camera_alt,
              //               color: Colors.white,
              //             ),
              //           )),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              buildTextField("Tên", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.name!
                  //     : "Not sigin",
                  // false
                  ),
              buildTextField("Giống loài", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.email!
                  //     : "Not sigin",
                  // false
                  ),
              buildTextField("Giới tính", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.phone!
                  //     : "Not sigin",
                  // false
                  ),
              buildTextField("Màu sắc", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.phone!
                  //     : "Not sigin",
                  // false
                  ),
              buildTextField("Cân nặng", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.phone!
                  //     : "Not sigin",
                  // false
                  ),
              buildTextField("Chiều cao", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.phone!
                  //     : "Not sigin",
                  // false
                  ),
              buildTextField("Mô tả", ""
                  // AuthServices.isLoggedIn()
                  //     ? AuthServices.userLoggedIn.value.phone!
                  //     : "Not sigin",
                  // false
                  ),

              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hình ảnh:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Image.network(
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                            width: 80,
                            height: 80,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Card(
                          child: Image.network(
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Video:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Image.network(
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                            width: 80,
                            height: 80,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Card(
                          child: Image.network(
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 170,
                height: 50,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.listBird);
                  },
                  child: Text(
                    "Tạo mới chim",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  // child: Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 63,
                  //     vertical: 13,
                  //   ),
                  //   child: Container(
                  //     width: 170,
                  //     height: 20,

                  //   ),
                  // ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff00CC00),
                    borderRadius: BorderRadius.circular(4)),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          // obscureText: isPasswordTextField ? showPassword : false,
          decoration: InputDecoration(
              // suffixIcon: isPasswordTextField
              //     ? IconButton(
              //         onPressed: () {
              //           // setState(() {
              //           //   showPassword = !showPassword;
              //           // });
              //         },
              //         icon: Icon(
              //           Icons.remove_red_eye,
              //           color: Colors.grey,
              //         ),
              //       )
              //     : null,
              contentPadding: EdgeInsets.only(bottom: 3),
              labelText: labelText,
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
      ),
    );
  }

  Future openFile({required String url, String? fileName}) async {
    final name = fileName ?? url.split('/').last;
    final file = await (isDownloading ? downloadFile(url, name) : pickFile());
    if (file == null) return;

    print('Path: ${file.path}');
    print('Length: ${file.lengthSync()}');

    OpenFile.open(file.path);
  }

  Future<File?> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return null;

    return File(result.files.first.path!);
  }

  /// Download file into private folder not visible to user
  Future<File?> downloadFile(String url, String name) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$name');

    try {
      final response = await Dio().get(
        url,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: 0,
        ),
      );

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();

      return file;
    } catch (e) {
      print('---------------------');
      return null;
    }
  }
}
