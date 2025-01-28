import 'package:car_pooling/main.dart';

abstract class CarPoolingDataSource {
  List<CarPooling> fetchCarPoolingInfo();
}

class CarPoolingDataSourceImpl extends CarPoolingDataSource{
  @override
  List<CarPooling> fetchCarPoolingInfo() {
    // TODO: implement fetchCarPoolingInfo
    throw UnimplementedError();
  }

}
