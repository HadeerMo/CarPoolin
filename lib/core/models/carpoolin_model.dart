import 'package:car_pooling/core/models/car.dart';

class CarpoolinModel {
  final int id;
  final String image;
  final String driverName;
  final DateTime fromDate;
  final DateTime toDate;
  final double fare;
  final String from;
  final String to;
  final String fromAddress;
  final String toAddress;
  final double rate;
  final int reviewsNum;
  final String driverDetails;
  final Car driverCar;

  CarpoolinModel(
    this.id, {
    required this.image,
    required this.driverName,
    required this.fromDate,
    required this.toDate,
    required this.fare,
    required this.from,
    required this.to,
    required this.fromAddress,
    required this.toAddress,
    required this.rate,
    required this.reviewsNum,
    required this.driverDetails,
    required this.driverCar,
  });
}
