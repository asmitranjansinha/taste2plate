import 'dart:developer';

import 'package:get/get.dart';
import 'package:taste2plate/models/tastestoplate.dart';
import 'package:taste2plate/services/content_service.dart';

class ContentController extends GetxController {
  final _remoteService = RemoteService();

  Tastestoplate content = Tastestoplate();

  bool isLoading = false;

  Future getTaste() async {
    isLoading = true;
    try {
      final tasteData = await _remoteService.getTaste();
      if (tasteData != null) {
        content = tasteData;
        update();
      }
    } catch (e) {
      log("Error getting taste data: $e");
    } finally {
      isLoading = false;
    }
  }
}
