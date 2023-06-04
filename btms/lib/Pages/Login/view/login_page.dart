import 'package:btms/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/Color/hexa_color.dart';
import '../../../Widgets/fade_amimation.dart';
import '../../ForgotPassword/view/forgotPassScreen.dart';
import '../../Home/view/homeScreen.dart';
import '../../SignUp/view/signUpScreen.dart';
import '../controller/login_controller.dart';

enum FormData {
  Email,
  password,
}

class LoginScreen extends GetView<LoginController> {
  Color enabled = const Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  bool ispasswordev = true;
  FormData? selected;

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [
              // HexColor("#4b4293").withOpacity(0.8),
              // HexColor("#4b4293"),
              // HexColor("#08418e"),
              // HexColor("#08418e")

              HexColor("#ffffff").withOpacity(0.8),
              HexColor("#ffffff"),
              HexColor("#ffffff"),
              HexColor("#ffffff")
            ],
          ),
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   colorFilter: ColorFilter.mode(
          //       HexColor("#ffffff").withOpacity(0.2), BlendMode.dstATop),
          //   image: const NetworkImage(
          //     '',
          //   ),
          // ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeAnimation(
                  delay: 0.1,
                  child: Image.network(
                    "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 5,
                  color:
                      // const Color.fromARGB(255, 171, 211, 250).withOpacity(0.4),
                      Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
                  child: Container(
                    width: 400,
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        FadeAnimation(
                          delay: 1,
                          child: const Text(
                            "BTMS, xin chào",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: const Text(
                            "Đăng nhập để tiếp tục",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Tài khoản của bạn",
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: selected == FormData.Email
                                  ? enabled
                                  : backgroundColor,
                            ),
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              controller: emailController,
                              onTap: () {
                                // setState(() {
                                //   selected = FormData.Email;
                                // });
                              },
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: selected == FormData.Email
                                      ? enabledtxt
                                      : deaible,
                                  size: 20,
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: selected == FormData.Email
                                        ? enabledtxt
                                        : deaible,
                                    fontSize: 12),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                  color: selected == FormData.Email
                                      ? enabledtxt
                                      : deaible,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Mật khẩu",
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: selected == FormData.password
                                    ? enabled
                                    : backgroundColor),
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              controller: passwordController,
                              onTap: () {
                                //controller
                              },
                              decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.lock_open_outlined,
                                    color: selected == FormData.password
                                        ? enabledtxt
                                        : deaible,
                                    size: 20,
                                  ),
                                  suffixIcon: IconButton(
                                      icon: ispasswordev
                                          ? Icon(
                                              Icons.visibility_off,
                                              color:
                                                  selected == FormData.password
                                                      ? enabledtxt
                                                      : deaible,
                                              size: 20,
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              color:
                                                  selected == FormData.password
                                                      ? enabledtxt
                                                      : deaible,
                                              size: 20,
                                            ),
                                      onPressed: () {
                                        //controller
                                      }),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: selected == FormData.password
                                          ? enabledtxt
                                          : deaible,
                                      fontSize: 12)),
                              obscureText: ispasswordev,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                  color: selected == FormData.password
                                      ? enabledtxt
                                      : deaible,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: TextButton(
                              onPressed: () {
                                // Navigator.pop(context);
                                // Navigator.of(context)
                                //     .push(MaterialPageRoute(builder: (context) {
                                //   return MyApp(isLogin: true);
                                // }));
                                // Navigator.pop(context);
                                // Navigator.of(context)
                                //     .push(MaterialPageRoute(builder: (context) {
                                //   return HomeScreen();
                                // }));
                                Get.toNamed(Routes.homeScreen);
                              },
                              child: Text(
                                "Đăng nhập",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFF2697FF),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14.0, horizontal: 80),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          delay: 0.1,
                          child: GestureDetector(
                            onTap: (() {
                              // Navigator.pop(context);
                              // Navigator.of(context)
                              //     .push(MaterialPageRoute(builder: (context) {
                              //   return ForgotPasswordScreen();
                              // }));
                              Get.toNamed(Routes.forgotPass);
                            }),
                            child: Text("Quên mật khẩu?",
                                // textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.blueAccent.withOpacity(0.9),
                                  letterSpacing: 0.5,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //End of Center Card
                //Start of outer card
                const SizedBox(
                  height: 15,
                ),
                // FadeAnimation(
                //   delay: 1,
                //   child: GestureDetector(
                //     onTap: (() {
                //       Navigator.pop(context);
                //       Navigator.of(context)
                //           .push(MaterialPageRoute(builder: (context) {
                //         return ForgotPasswordScreen();
                //       }));
                //     }),
                //     child: Text("Quên mật khẩu",
                //         style: TextStyle(
                //           color: Colors.blueAccent.withOpacity(0.9),
                //           letterSpacing: 0.5,
                //         )),
                //   ),
                // ),
                const SizedBox(height: 10),
                FadeAnimation(
                  delay: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Bạn chưa có tài khoản? ",
                          style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 0.5,
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return SignUpScreen();
                          }));
                        },
                        child: Text("Tạo tài khoản ở đây",
                            style: TextStyle(
                                color: Colors.blueAccent.withOpacity(0.9),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                                fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
