import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:openweather/app/shared/shared_module.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final WeatherRepository _weatherRepository;

  _HomeControllerBase(this._weatherRepository);

  @observable
  List<WeatherModel> weathers;

  @action
  Future<void> addWeather({@required String q, int days = 10}) async {
    if (weathers == null) weathers = [];
    WeatherModel w = await _weatherRepository.getWeatherInfo(q: q, days: days);
    if (w != null) {
      List<WeatherModel> temp = weathers;
      temp.add(w);
      weathers = null;
      weathers = temp;
    }
  }

  @action
  void removeWeather(String q) {
    List<WeatherModel> temp = weathers;
    weathers = null;
    temp.removeWhere((weather) => weather.location.name.contains(q));
    weathers = temp;
  }

  @observable
  WeatherModel weatherSelected;

  void setWeather(WeatherModel nW){
    weatherSelected = nW;
  }


  @observable
  Forecastday daySelected;

  void setDay(Forecastday nFD){
    daySelected = nFD;
  }
}
