import 'dart:core';

class SearchEntity {
  final String carPoolinId;
  final String fromTime;
  final String toTime;
  final String fromPlace;
  final String toPlace;
  final String imagePath;
  final String nameOfDriver;
  final double driverFare;

  SearchEntity({
    required this.carPoolinId, 
    required this.fromTime,
    required this.toTime,
    required this.fromPlace,
    required this.toPlace,
    required this.imagePath,
    required this.nameOfDriver,
    required this.driverFare,
  });
}
