import 'package:efe1/data/mappers/driver_standings_mapper.dart';
import 'package:efe1/driver_standings/driver_standing.dart';
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

class ApiClient {
  final String _host = "https://ergast.com/api/f1/2021/";
  final String _endDriverStandings = "driverStandings.json";

  Future<List<DriverStanding>> fetchDriverStandings() async {
    final response = await get(_endDriverStandings);

    final driverStandings = DriverStandingMapper.toDomainList(response);

    return [];
  }

  Future<Map> get(String path) async {
    final uri = Uri.http(_host, path);
    final response = await http.get(uri);
    return json.decode(response.body);
  }
}
