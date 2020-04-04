import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final BoxDecoration defaultDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
  );

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: defaultDecoration,
            child: TextFormField(
              controller: textEditingController,
              decoration:
                  InputDecoration(labelText: 'Local', border: InputBorder.none),
              onFieldSubmitted: (text) async {
                await controller.addWeather(q: text);
                textEditingController.text = '';
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Observer(
              builder: (_) {
                if (controller.weathers == null) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    decoration: defaultDecoration,
                    child: Row(),
                  );
                }
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: defaultDecoration,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: controller.weathers
                          .map((e) => GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  margin: EdgeInsets.all(10),
                                  decoration: (e.location.name.contains(
                                          controller.weatherSelected?.location
                                                  ?.name ??
                                              "kkkkkk"))
                                      ? defaultDecoration.copyWith(
                                          border:
                                              Border.all(color: Colors.black),
                                        )
                                      : defaultDecoration,
                                  child: Text(
                                    e?.location?.name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                onTap: () {
                                  controller.setWeather(e);
                                },
                              ))
                          .toList()
                          .cast<Widget>()),
                );
              },
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Observer(
                      builder: (_) {
                        if (controller.weatherSelected == null) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            decoration: defaultDecoration,
                            child: Column(
                              children: <Widget>[],
                            ),
                          );
                        }
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: defaultDecoration,
                          child: ListView(
                              scrollDirection: Axis.vertical,
                              children: controller
                                  .weatherSelected.forecast.forecastday
                                  .map((e) => ListTile(
                                        title: Text(
                                          e.date.toString(),
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        onTap: () {
                                          controller.setDay(e);
                                        },
                                      ))
                                  .toList()
                                  .cast<Widget>()),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      padding: EdgeInsets.all(20),
                      decoration: defaultDecoration,
                      child: Observer(
                        builder: (_) {
                          if (controller.daySelected == null) {
                            return Container(
                              child: Column(
                                children: <Widget>[],
                              ),
                            );
                          }
                          return Container(
                            child: Column(
                              children: <Widget>[
                                Text(controller.daySelected.day
                                    .toMap()
                                    .toString()),
                                Image.network(controller
                                    .daySelected.day.condition.icon
                                    .replaceFirst('//', 'https://')
                                    .replaceAll('64', '128'))
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
