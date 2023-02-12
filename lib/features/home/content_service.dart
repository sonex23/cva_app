import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cva_app/features/home/content_entity.dart';

class ContentService {
  final CollectionReference _contentRefference =
      FirebaseFirestore.instance.collection('content');

  Future<List<ContentEntity>> getAllContent() async {
    try {
      QuerySnapshot result = await _contentRefference.get();

      List<ContentEntity> content = result.docs
          .map((content) =>
              ContentEntity.fromJson(content.data() as Map<String, dynamic>))
          .toList();

      return content;
    } catch (e) {
      rethrow;
    }
  }
}
