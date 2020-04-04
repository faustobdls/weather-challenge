import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:openweather/app/shared/shared_module.dart';


class WeatherRepository extends Disposable {
  final Dio _dio;

  WeatherRepository(this._dio);
  Future<WeatherModel> getWeatherInfo(
      {@required String q, int days = 10}) async {
    // print(
    //     '${Constants.URLOPENWEATHER}?key=${Constants.KEYWEATHER}&q=$q&days=$days');
    try {
      final response = await _dio.get(
          '${Constants.URLOPENWEATHER}?key=${Constants.KEYWEATHER}&q=$q&days=$days');
      // print(response.statusCode);
      // print(response.statusMessage);
      var w = WeatherModel.fromMap(response.data);
      // print(w.toMap());
      // print(
      //     '${Constants.URLOPENWEATHER}?key=${Constants.KEYWEATHER}&q=$q&days=$days');
      return w;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
