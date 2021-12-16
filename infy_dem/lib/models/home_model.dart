import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  String? title;
  List<HomeRows>? rows;

  HomeModel(
    this.title,
    this.rows,
  );

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class HomeRows {
  String? title;
  String? description;
  String? imageHref;

  HomeRows(
    this.title,
    this.description,
    this.imageHref,
  );

  factory HomeRows.fromJson(Map<String, dynamic> json) =>
      _$HomeRowsFromJson(json);
  Map<String, dynamic> toJson() => _$HomeRowsToJson(this);
}
