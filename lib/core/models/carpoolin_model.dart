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

  CarpoolinModel({
    required this.id,
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

  factory CarpoolinModel.fromJson(Map<String, dynamic> json) => CarpoolinModel(
        id: json['id'] as int,
        image: json['image'] as String,
        from: json['from'] as String,
        to: json['to'] as String,
        driverDetails: json['driverDetails'] as String,
        driverName: json['driverName'] as String,
        fare: json['fare'] as double,
        fromAddress: json['fromAddress'] as String,
        toAddress: json['toAddress'] as String,
        fromDate: json['fromDate'] as DateTime,
        toDate: json['toDate'] as DateTime,
        rate: json['rate'] as double,
        reviewsNum: json['reviewsNum'] as int,
        driverCar: Car(
          id: json['driverCar']['id'],
          type: json['driverCar']['type'],
          color: json['driverCar']['color'],
        ),
      );
}
