import 'package:efe1/driver/driver.dart';

class DriverMapper {
  static Driver toDomain(Map map) {
    final Map driver = map["MRData"]["DriverTable"]["Drivers"][0];

    return Driver(
      id: driver["driverId"],
      name: "${driver["familyName"]}, ${driver["givenName"]}",
      number: driver["permanentNumber"] ?? "",
      code: driver["code"] ?? "",
      dateOfBirth: driver["dateOfBirth"] ?? "",
      nationality: driver["nationality"] ?? "",
    );
  }
}
