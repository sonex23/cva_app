import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_entity.freezed.dart';
part 'content_entity.g.dart';

@freezed
class ContentEntity with _$ContentEntity {
  const factory ContentEntity({
    String? img,
    String? title,
    String? url,
  }) = _ContentEntity;

  factory ContentEntity.fromJson(Map<String, dynamic> json) =>
      _$ContentEntityFromJson(json);
}
