import 'package:btms/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/account_controller.dart';

class AccountScreen extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
              'Thông tin',
              style: TextStyle(color: Colors.black87, fontSize: 40),
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
              Center(
                child: Stack(
                  children: [
                    Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          //avt
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png"),
                          ),
                        )),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              //user name
              // buildTextField(
              //     "Name",
              //     AuthServices.isLoggedIn()
              //         ? AuthServices.userLoggedIn.value.name!
              //         : "Not sigin",
              //     false),
              Text(
                "Họ và Tên",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Nhật Minh",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              //email
              // buildTextField(
              //     "Địa chỉ Email",
              //     AuthServices.isLoggedIn()
              //         ? AuthServices.userLoggedIn.value.email!
              //         : "Not sigin",
              //     false),
              Text(
                "Email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "minh@gmail.com",
                style: TextStyle(fontSize: 30),
              ),
              //sdt
              // buildTextField(
              //     "Số điện thoại",
              //     AuthServices.isLoggedIn()
              //         ? AuthServices.userLoggedIn.value.phone!
              //         : "Not sigin",
              //     false),
              // Container(
              SizedBox(
                height: 15,
              ),
              Text(
                "Số điện thoại",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "0123456789",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Sinh Nhật",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "01 - 01 - 2023",
                style: TextStyle(fontSize: 30),
              ),
              //buildTextField("Địa chỉ (Không bắt buộc)", "", false),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.editProfile);
                  },
                  child: Container(
                    // width: 167,
                    // height: 19,
                    child: Text(
                      "Chỉnh sửa thông tin",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                // child: Padding(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: 63,
                //     vertical: 13,
                //   ),

                // ),
                decoration: BoxDecoration(
                    color: Color(0xff2AD4D3),
                    borderRadius: BorderRadius.circular(4)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildTextField(
  //     String labelText, String placeholder, bool isPasswordTextField) {
  //   return Container(
  //     margin: EdgeInsets.only(left: 20, right: 20),
  //     child: Padding(
  //       padding: EdgeInsets.all(10),
  //       child: TextField(
  //         obscureText: isPasswordTextField ? showPassword : false,
  //         decoration: InputDecoration(
  //             suffixIcon: isPasswordTextField
  //                 ? IconButton(
  //                     onPressed: () {
  //                       // setState(() {
  //                       //   showPassword = !showPassword;
  //                       // });
  //                     },
  //                     icon: Icon(
  //                       Icons.remove_red_eye,
  //                       color: Colors.grey,
  //                     ),
  //                   )
  //                 : null,
  //             contentPadding: EdgeInsets.only(bottom: 3),
  //             labelText: labelText,
  //             labelStyle: TextStyle(
  //               fontSize: 18,
  //             ),
  //             floatingLabelBehavior: FloatingLabelBehavior.always,
  //             hintText: placeholder,
  //             hintStyle: TextStyle(
  //               fontSize: 16,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             )),
  //       ),
  //     ),
  //   );
  // }
}
