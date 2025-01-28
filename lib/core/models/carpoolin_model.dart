import 'package:car_pooling/core/models/car.dart';
import 'package:car_pooling/features/search_page/domain/entities/search_entity.dart';

class CarpoolinModel extends SearchEntity {
  final String id;
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
  final int reviews;
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
    required this.reviews,
    required this.driverDetails,
    required this.driverCar,
  }) : super(
          carPoolinId: id,
          fromTime: fromDate.timeZoneName.toString(),
          toTime: toDate.timeZoneName.toString(),
          fromPlace: from,
          toPlace: to,
          imagePath: image,
          nameOfDriver: driverName,
          driverFare: fare,
        );
}
