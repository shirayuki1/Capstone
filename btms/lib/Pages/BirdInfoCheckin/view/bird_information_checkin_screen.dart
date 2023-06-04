import 'dart:io';
import 'dart:ui';
import 'package:btms/Pages/BirdInfoCheckin/controller/bird_information_checkin_controller.dart';
import 'package:btms/Pages/BirdInformation/controller/bird_information_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:cached_video_preview/cached_video_preview.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class BirdInformationCheckinScreen
    extends GetView<BirdInformationCheckinController> {
  bool isDownloading = true;
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
              'Thông tin về chim',
              style: TextStyle(color: Colors.black, fontSize: 40),
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
              //             //avt
              //             image: DecorationImage(
              //               fit: BoxFit.cover,
              //               image: NetworkImage(
              //                   "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png"),
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
              Row(
                children: [
                  Text(
                    "Tên:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Bird",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Giống loài:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Việt Nam",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Giới tính:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Cá thể cái",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Màu sắc:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Ngâm ngâm",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Cân nặng:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "1 kg",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Chiều cao:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "40 cm",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mô tả:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Text(
                      "Chào mào là một loài chim thuộc bộ Sẻ phân bố ở châu Á. Nó là một thành viên của họ Chào mào. Nó là một loài động vật ăn quả thường trú được tìm thấy chủ yếu ở châu Á nhiệt đới. Nó đã được đưa bởi con người vào nhiều khu vực nhiệt đới trên thế giới, nơi các quần thể đã tự hình thành. Nó ăn trái cây và côn trùng nhỏ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
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
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 50,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.listBird);
                      },
                      child: Text(
                        "Xóa hồ sơ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffFF0000),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Container(
                    width: 170,
                    height: 50,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.updateBird);
                      },
                      child: Text(
                        "Chỉnh sửa",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffFFBF00),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGalleries() {
    //final img = "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png";
    return Container(
      child: Row(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              //   spacing: 15,
              // runSpacing: 15,
              children: [
                Card(
                  elevation: 10,
                  child: GestureDetector(
                    child: Container(
                      // child: Hero(
                      //   tag: "customBackground",
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(5),
                      //     // child: imagPr
                      //     child: HtmlWwidget(
                      //       // 'https://png.pngtree.com/element_our/md/20180517/md_5afd56a7b8054.jpg',
                      //       img.media.toString(),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      child: CachedVideoPreviewWidget(
                        //path: img.media.toString(),
                        path:
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                        type: SourceType.remote,
                        remoteImageBuilder: (BuildContext context, url) =>
                            Image.network(url),
                      ),
                    ),
                    onTap: () {
                      openFile(
                        //url: img.meida.toString(),
                        url:
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                        // opt. fileName: file.pdf
                      );
                      //showViewer(_document);
                      //OpenFile.open("/sdcard/example.pptx");
                    },
                  ),
                ),
                Card(
                  elevation: 10,
                  child: GestureDetector(
                    child: Container(
                      // child: Hero(
                      //   tag: "customBackground",
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(5),
                      //     // child: imagPr
                      //     child: HtmlWwidget(
                      //       // 'https://png.pngtree.com/element_our/md/20180517/md_5afd56a7b8054.jpg',
                      //       img.media.toString(),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      child: CachedVideoPreviewWidget(
                        //path: img.media.toString(),
                        path:
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                        type: SourceType.remote,
                        remoteImageBuilder: (BuildContext context, url) =>
                            Image.network(
                                "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png"),
                      ),
                    ),
                    onTap: () {
                      openFile(
                        //url: img.meida.toString(),
                        url:
                            "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                        // opt. fileName: file.pdf
                      );
                      //showViewer(_document);
                      //OpenFile.open("/sdcard/example.pptx");
                    },
                  ),
                ),
                // return Card(
                //   elevation: 10,
                //   child: FullScreenWidget(
                //     backgroundColor: Colors.black,
                //     child: Center(
                //       child: Hero(
                //         tag: "customBackground",
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(5),
                //           // child: imagPr
                //           // child: Image.network(
                //           //   // 'https://png.pngtree.com/element_our/md/20180517/md_5afd56a7b8054.jpg',
                //           //   img.media.toString(),
                //           //   fit: BoxFit.cover,
                //           // ),
                //         ),
                //       ),
                //     ),
                //   ),
                // );
              ],
            ),
          ),
        ],
      ),
    );

    // return container;
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
