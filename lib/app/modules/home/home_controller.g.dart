// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$weathersAtom = Atom(name: '_HomeControllerBase.weathers');

  @override
  List<WeatherModel> get weathers {
    _$weathersAtom.context.enforceReadPolicy(_$weathersAtom);
    _$weathersAtom.reportObserved();
    return super.weathers;
  }

  @override
  set weathers(List<WeatherModel> value) {
    _$weathersAtom.context.conditionallyRunInAction(() {
      super.weathers = value;
      _$weathersAtom.reportChanged();
    }, _$weathersAtom, name: '${_$weathersAtom.name}_set');
  }

  final _$weatherSelectedAtom =
      Atom(name: '_HomeControllerBase.weatherSelected');

  @override
  WeatherModel get weatherSelected {
    _$weatherSelectedAtom.context.enforceReadPolicy(_$weatherSelectedAtom);
    _$weatherSelectedAtom.reportObserved();
    return super.weatherSelected;
  }

  @override
  set weatherSelected(WeatherModel value) {
    _$weatherSelectedAtom.context.conditionallyRunInAction(() {
      super.weatherSelected = value;
      _$weatherSelectedAtom.reportChanged();
    }, _$weatherSelectedAtom, name: '${_$weatherSelectedAtom.name}_set');
  }

  final _$daySelectedAtom = Atom(name: '_HomeControllerBase.daySelected');

  @override
  Forecastday get daySelected {
    _$daySelectedAtom.context.enforceReadPolicy(_$daySelectedAtom);
    _$daySelectedAtom.reportObserved();
    return super.daySelected;
  }

  @override
  set daySelected(Forecastday value) {
    _$daySelectedAtom.context.conditionallyRunInAction(() {
      super.daySelected = value;
      _$daySelectedAtom.reportChanged();
    }, _$daySelectedAtom, name: '${_$daySelectedAtom.name}_set');
  }

  final _$addWeatherAsyncAction = AsyncAction('addWeather');

  @override
  Future<void> addWeather({@required String q, int days = 10}) {
    return _$addWeatherAsyncAction
        .run(() => super.addWeather(q: q, days: days));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void removeWeather(String q) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.removeWeather(q);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'weathers: ${weathers.toString()},weatherSelected: ${weatherSelected.toString()},daySelected: ${daySelected.toString()}';
    return '{$string}';
  }
}
