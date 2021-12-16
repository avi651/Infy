// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      json['title'] as String?,
      (json['rows'] as List<dynamic>?)
          ?.map((e) => HomeRows.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'title': instance.title,
      'rows': instance.rows,
    };

HomeRows _$HomeRowsFromJson(Map<String, dynamic> json) => HomeRows(
      json['title'] as String?,
      json['description'] as String?,
      json['imageHref'] as String?,
    );

Map<String, dynamic> _$HomeRowsToJson(HomeRows instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageHref': instance.imageHref,
    };
