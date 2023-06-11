import 'package:get/get.dart';

class Bird {
  final String name;
  var isSelected = false.obs;
  Bird({required this.name, required this.isSelected});
}
