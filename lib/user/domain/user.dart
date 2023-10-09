import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  User([
    this.image,
    this.address,
    this.age,
    this.height,
    this.weight,
    this.userName,
  ]);

  Id id = Isar.autoIncrement;
  String? userName;
  int? age; //years
  double? height;
  double? weight;
  String? address;
  String? image;
}

// @embedded
// class UserData {
//   String? userName;
//   int? age; //years
//   double? height;
//   double? weight;
//   String? address;
//   String? image;
// }
