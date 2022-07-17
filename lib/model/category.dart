import 'package:hive_flutter/adapters.dart';
part 'category.g.dart';

@HiveType(typeId: 1)
class Category {
  @HiveField(0)
  final String? imgIcon;
  @HiveField(1)
  final String? name;

  Category({required this.name, required this.imgIcon});
}
