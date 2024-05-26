import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "اختر اللغه "},
        "en": {"1": "choose Language"}
      };
}
