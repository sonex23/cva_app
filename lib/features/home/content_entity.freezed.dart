// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentEntity _$ContentEntityFromJson(Map<String, dynamic> json) {
  return _ContentEntity.fromJson(json);
}

/// @nodoc
mixin _$ContentEntity {
  String? get img => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentEntityCopyWith<ContentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentEntityCopyWith<$Res> {
  factory $ContentEntityCopyWith(
          ContentEntity value, $Res Function(ContentEntity) then) =
      _$ContentEntityCopyWithImpl<$Res, ContentEntity>;
  @useResult
  $Res call({String? img, String? title, String? url});
}

/// @nodoc
class _$ContentEntityCopyWithImpl<$Res, $Val extends ContentEntity>
    implements $ContentEntityCopyWith<$Res> {
  _$ContentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentEntityCopyWith<$Res>
    implements $ContentEntityCopyWith<$Res> {
  factory _$$_ContentEntityCopyWith(
          _$_ContentEntity value, $Res Function(_$_ContentEntity) then) =
      __$$_ContentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? img, String? title, String? url});
}

/// @nodoc
class __$$_ContentEntityCopyWithImpl<$Res>
    extends _$ContentEntityCopyWithImpl<$Res, _$_ContentEntity>
    implements _$$_ContentEntityCopyWith<$Res> {
  __$$_ContentEntityCopyWithImpl(
      _$_ContentEntity _value, $Res Function(_$_ContentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ContentEntity(
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentEntity implements _ContentEntity {
  const _$_ContentEntity({this.img, this.title, this.url});

  factory _$_ContentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ContentEntityFromJson(json);

  @override
  final String? img;
  @override
  final String? title;
  @override
  final String? url;

  @override
  String toString() {
    return 'ContentEntity(img: $img, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentEntity &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, img, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentEntityCopyWith<_$_ContentEntity> get copyWith =>
      __$$_ContentEntityCopyWithImpl<_$_ContentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentEntityToJson(
      this,
    );
  }
}

abstract class _ContentEntity implements ContentEntity {
  const factory _ContentEntity(
      {final String? img,
      final String? title,
      final String? url}) = _$_ContentEntity;

  factory _ContentEntity.fromJson(Map<String, dynamic> json) =
      _$_ContentEntity.fromJson;

  @override
  String? get img;
  @override
  String? get title;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_ContentEntityCopyWith<_$_ContentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
