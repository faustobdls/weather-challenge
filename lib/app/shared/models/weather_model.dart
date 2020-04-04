// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'dart:convert';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromMap(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toMap());

class WeatherModel {
    final Location location;
    final Current current;
    final Forecast forecast;
    final Alert alert;

    WeatherModel({
        this.location,
        this.current,
        this.forecast,
        this.alert,
    });

    WeatherModel copyWith({
        Location location,
        Current current,
        Forecast forecast,
        Alert alert,
    }) => 
        WeatherModel(
            location: location ?? this.location,
            current: current ?? this.current,
            forecast: forecast ?? this.forecast,
            alert: alert ?? this.alert,
        );

    factory WeatherModel.fromMap(Map<String, dynamic> json) => WeatherModel(
        location: json["location"] == null ? null : Location.fromMap(json["location"]),
        current: json["current"] == null ? null : Current.fromMap(json["current"]),
        forecast: json["forecast"] == null ? null : Forecast.fromMap(json["forecast"]),
        alert: json["alert"] == null ? null : Alert.fromMap(json["alert"]),
    );

    Map<String, dynamic> toMap() => {
        "location": location == null ? null : location.toMap(),
        "current": current == null ? null : current.toMap(),
        "forecast": forecast == null ? null : forecast.toMap(),
        "alert": alert == null ? null : alert.toMap(),
    };
}

class Alert {
    Alert();

    // Alert copyWith({
    // }) => 
    //     Alert(
    //     );

    factory Alert.fromMap(Map<String, dynamic> json) => Alert(
    );

    Map<String, dynamic> toMap() => {
    };
}

class Current {
    final int lastUpdatedEpoch;
    final String lastUpdated;
    final int tempC;
    final double tempF;
    final int isDay;
    final Condition condition;
    final double windMph;
    final double windKph;
    final int windDegree;
    final String windDir;
    final int pressureMb;
    final double pressureIn;
    final double precipMm;
    final double precipIn;
    final int humidity;
    final int cloud;
    final double feelslikeC;
    final double feelslikeF;
    final int visKm;
    final int visMiles;
    final int uv;
    final double gustMph;
    final double gustKph;

    Current({
        this.lastUpdatedEpoch,
        this.lastUpdated,
        this.tempC,
        this.tempF,
        this.isDay,
        this.condition,
        this.windMph,
        this.windKph,
        this.windDegree,
        this.windDir,
        this.pressureMb,
        this.pressureIn,
        this.precipMm,
        this.precipIn,
        this.humidity,
        this.cloud,
        this.feelslikeC,
        this.feelslikeF,
        this.visKm,
        this.visMiles,
        this.uv,
        this.gustMph,
        this.gustKph,
    });

    Current copyWith({
        int lastUpdatedEpoch,
        String lastUpdated,
        int tempC,
        double tempF,
        int isDay,
        Condition condition,
        double windMph,
        double windKph,
        int windDegree,
        String windDir,
        int pressureMb,
        double pressureIn,
        double precipMm,
        double precipIn,
        int humidity,
        int cloud,
        double feelslikeC,
        double feelslikeF,
        int visKm,
        int visMiles,
        int uv,
        double gustMph,
        double gustKph,
    }) => 
        Current(
            lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
            lastUpdated: lastUpdated ?? this.lastUpdated,
            tempC: tempC ?? this.tempC,
            tempF: tempF ?? this.tempF,
            isDay: isDay ?? this.isDay,
            condition: condition ?? this.condition,
            windMph: windMph ?? this.windMph,
            windKph: windKph ?? this.windKph,
            windDegree: windDegree ?? this.windDegree,
            windDir: windDir ?? this.windDir,
            pressureMb: pressureMb ?? this.pressureMb,
            pressureIn: pressureIn ?? this.pressureIn,
            precipMm: precipMm ?? this.precipMm,
            precipIn: precipIn ?? this.precipIn,
            humidity: humidity ?? this.humidity,
            cloud: cloud ?? this.cloud,
            feelslikeC: feelslikeC ?? this.feelslikeC,
            feelslikeF: feelslikeF ?? this.feelslikeF,
            visKm: visKm ?? this.visKm,
            visMiles: visMiles ?? this.visMiles,
            uv: uv ?? this.uv,
            gustMph: gustMph ?? this.gustMph,
            gustKph: gustKph ?? this.gustKph,
        );

    factory Current.fromMap(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json["last_updated_epoch"] == null ? null : json["last_updated_epoch"],
        lastUpdated: json["last_updated"] == null ? null : json["last_updated"],
        tempC: json["temp_c"] == null ? null : json["temp_c"],
        tempF: json["temp_f"] == null ? null : json["temp_f"].toDouble(),
        isDay: json["is_day"] == null ? null : json["is_day"],
        condition: json["condition"] == null ? null : Condition.fromMap(json["condition"]),
        windMph: json["wind_mph"] == null ? null : json["wind_mph"].toDouble(),
        windKph: json["wind_kph"] == null ? null : json["wind_kph"].toDouble(),
        windDegree: json["wind_degree"] == null ? null : json["wind_degree"],
        windDir: json["wind_dir"] == null ? null : json["wind_dir"],
        pressureMb: json["pressure_mb"] == null ? null : json["pressure_mb"],
        pressureIn: json["pressure_in"] == null ? null : json["pressure_in"].toDouble(),
        precipMm: json["precip_mm"] == null ? null : json["precip_mm"].toDouble(),
        precipIn: json["precip_in"] == null ? null : json["precip_in"].toDouble(),
        humidity: json["humidity"] == null ? null : json["humidity"],
        cloud: json["cloud"] == null ? null : json["cloud"],
        feelslikeC: json["feelslike_c"] == null ? null : json["feelslike_c"].toDouble(),
        feelslikeF: json["feelslike_f"] == null ? null : json["feelslike_f"].toDouble(),
        visKm: json["vis_km"] == null ? null : json["vis_km"],
        visMiles: json["vis_miles"] == null ? null : json["vis_miles"],
        uv: json["uv"] == null ? null : json["uv"],
        gustMph: json["gust_mph"] == null ? null : json["gust_mph"].toDouble(),
        gustKph: json["gust_kph"] == null ? null : json["gust_kph"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "last_updated_epoch": lastUpdatedEpoch == null ? null : lastUpdatedEpoch,
        "last_updated": lastUpdated == null ? null : lastUpdated,
        "temp_c": tempC == null ? null : tempC,
        "temp_f": tempF == null ? null : tempF,
        "is_day": isDay == null ? null : isDay,
        "condition": condition == null ? null : condition.toMap(),
        "wind_mph": windMph == null ? null : windMph,
        "wind_kph": windKph == null ? null : windKph,
        "wind_degree": windDegree == null ? null : windDegree,
        "wind_dir": windDir == null ? null : windDir,
        "pressure_mb": pressureMb == null ? null : pressureMb,
        "pressure_in": pressureIn == null ? null : pressureIn,
        "precip_mm": precipMm == null ? null : precipMm,
        "precip_in": precipIn == null ? null : precipIn,
        "humidity": humidity == null ? null : humidity,
        "cloud": cloud == null ? null : cloud,
        "feelslike_c": feelslikeC == null ? null : feelslikeC,
        "feelslike_f": feelslikeF == null ? null : feelslikeF,
        "vis_km": visKm == null ? null : visKm,
        "vis_miles": visMiles == null ? null : visMiles,
        "uv": uv == null ? null : uv,
        "gust_mph": gustMph == null ? null : gustMph,
        "gust_kph": gustKph == null ? null : gustKph,
    };
}

class Condition {
    final String text;
    final String icon;
    final int code;

    Condition({
        this.text,
        this.icon,
        this.code,
    });

    Condition copyWith({
        String text,
        String icon,
        int code,
    }) => 
        Condition(
            text: text ?? this.text,
            icon: icon ?? this.icon,
            code: code ?? this.code,
        );

    factory Condition.fromMap(Map<String, dynamic> json) => Condition(
        text: json["text"] == null ? null : json["text"],
        icon: json["icon"] == null ? null : json["icon"],
        code: json["code"] == null ? null : json["code"],
    );

    Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "icon": icon == null ? null : icon,
        "code": code == null ? null : code,
    };
}

class Forecast {
    final List<Forecastday> forecastday;

    Forecast({
        this.forecastday,
    });

    Forecast copyWith({
        List<Forecastday> forecastday,
    }) => 
        Forecast(
            forecastday: forecastday ?? this.forecastday,
        );

    factory Forecast.fromMap(Map<String, dynamic> json) => Forecast(
        forecastday: json["forecastday"] == null ? null : List<Forecastday>.from(json["forecastday"].map((x) => Forecastday.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "forecastday": forecastday == null ? null : List<dynamic>.from(forecastday.map((x) => x.toMap())),
    };
}

class Forecastday {
    final DateTime date;
    final int dateEpoch;
    final Day day;
    final Astro astro;

    Forecastday({
        this.date,
        this.dateEpoch,
        this.day,
        this.astro,
    });

    Forecastday copyWith({
        DateTime date,
        int dateEpoch,
        Day day,
        Astro astro,
    }) => 
        Forecastday(
            date: date ?? this.date,
            dateEpoch: dateEpoch ?? this.dateEpoch,
            day: day ?? this.day,
            astro: astro ?? this.astro,
        );

    factory Forecastday.fromMap(Map<String, dynamic> json) => Forecastday(
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        dateEpoch: json["date_epoch"] == null ? null : json["date_epoch"],
        day: json["day"] == null ? null : Day.fromMap(json["day"]),
        astro: json["astro"] == null ? null : Astro.fromMap(json["astro"]),
    );

    Map<String, dynamic> toMap() => {
        "date": date == null ? null : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "date_epoch": dateEpoch == null ? null : dateEpoch,
        "day": day == null ? null : day.toMap(),
        "astro": astro == null ? null : astro.toMap(),
    };
}

class Astro {
    final String sunrise;
    final String sunset;
    final String moonrise;
    final String moonset;

    Astro({
        this.sunrise,
        this.sunset,
        this.moonrise,
        this.moonset,
    });

    Astro copyWith({
        String sunrise,
        String sunset,
        String moonrise,
        String moonset,
    }) => 
        Astro(
            sunrise: sunrise ?? this.sunrise,
            sunset: sunset ?? this.sunset,
            moonrise: moonrise ?? this.moonrise,
            moonset: moonset ?? this.moonset,
        );

    factory Astro.fromMap(Map<String, dynamic> json) => Astro(
        sunrise: json["sunrise"] == null ? null : json["sunrise"],
        sunset: json["sunset"] == null ? null : json["sunset"],
        moonrise: json["moonrise"] == null ? null : json["moonrise"],
        moonset: json["moonset"] == null ? null : json["moonset"],
    );

    Map<String, dynamic> toMap() => {
        "sunrise": sunrise == null ? null : sunrise,
        "sunset": sunset == null ? null : sunset,
        "moonrise": moonrise == null ? null : moonrise,
        "moonset": moonset == null ? null : moonset,
    };
}

class Day {
    final double maxtempC;
    final double maxtempF;
    final double mintempC;
    final double mintempF;
    final double avgtempC;
    final double avgtempF;
    final double maxwindMph;
    final double maxwindKph;
    final double totalprecipMm;
    final double totalprecipIn;
    final double avgvisKm;
    final int avgvisMiles;
    final int avghumidity;
    final Condition condition;
    final double uv;

    Day({
        this.maxtempC,
        this.maxtempF,
        this.mintempC,
        this.mintempF,
        this.avgtempC,
        this.avgtempF,
        this.maxwindMph,
        this.maxwindKph,
        this.totalprecipMm,
        this.totalprecipIn,
        this.avgvisKm,
        this.avgvisMiles,
        this.avghumidity,
        this.condition,
        this.uv,
    });

    Day copyWith({
        double maxtempC,
        double maxtempF,
        double mintempC,
        double mintempF,
        double avgtempC,
        double avgtempF,
        double maxwindMph,
        double maxwindKph,
        double totalprecipMm,
        double totalprecipIn,
        double avgvisKm,
        int avgvisMiles,
        int avghumidity,
        Condition condition,
        double uv,
    }) => 
        Day(
            maxtempC: maxtempC ?? this.maxtempC,
            maxtempF: maxtempF ?? this.maxtempF,
            mintempC: mintempC ?? this.mintempC,
            mintempF: mintempF ?? this.mintempF,
            avgtempC: avgtempC ?? this.avgtempC,
            avgtempF: avgtempF ?? this.avgtempF,
            maxwindMph: maxwindMph ?? this.maxwindMph,
            maxwindKph: maxwindKph ?? this.maxwindKph,
            totalprecipMm: totalprecipMm ?? this.totalprecipMm,
            totalprecipIn: totalprecipIn ?? this.totalprecipIn,
            avgvisKm: avgvisKm ?? this.avgvisKm,
            avgvisMiles: avgvisMiles ?? this.avgvisMiles,
            avghumidity: avghumidity ?? this.avghumidity,
            condition: condition ?? this.condition,
            uv: uv ?? this.uv,
        );

    factory Day.fromMap(Map<String, dynamic> json) => Day(
        maxtempC: json["maxtemp_c"] == null ? null : json["maxtemp_c"].toDouble(),
        maxtempF: json["maxtemp_f"] == null ? null : json["maxtemp_f"].toDouble(),
        mintempC: json["mintemp_c"] == null ? null : json["mintemp_c"].toDouble(),
        mintempF: json["mintemp_f"] == null ? null : json["mintemp_f"].toDouble(),
        avgtempC: json["avgtemp_c"] == null ? null : json["avgtemp_c"].toDouble(),
        avgtempF: json["avgtemp_f"] == null ? null : json["avgtemp_f"].toDouble(),
        maxwindMph: json["maxwind_mph"] == null ? null : json["maxwind_mph"].toDouble(),
        maxwindKph: json["maxwind_kph"] == null ? null : json["maxwind_kph"].toDouble(),
        totalprecipMm: json["totalprecip_mm"] == null ? null : json["totalprecip_mm"].toDouble(),
        totalprecipIn: json["totalprecip_in"] == null ? null : json["totalprecip_in"].toDouble(),
        avgvisKm: json["avgvis_km"] == null ? null : json["avgvis_km"].toDouble(),
        avgvisMiles: json["avgvis_miles"] == null ? null : json["avgvis_miles"],
        avghumidity: json["avghumidity"] == null ? null : json["avghumidity"],
        condition: json["condition"] == null ? null : Condition.fromMap(json["condition"]),
        uv: json["uv"] == null ? null : json["uv"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "maxtemp_c": maxtempC == null ? null : maxtempC,
        "maxtemp_f": maxtempF == null ? null : maxtempF,
        "mintemp_c": mintempC == null ? null : mintempC,
        "mintemp_f": mintempF == null ? null : mintempF,
        "avgtemp_c": avgtempC == null ? null : avgtempC,
        "avgtemp_f": avgtempF == null ? null : avgtempF,
        "maxwind_mph": maxwindMph == null ? null : maxwindMph,
        "maxwind_kph": maxwindKph == null ? null : maxwindKph,
        "totalprecip_mm": totalprecipMm == null ? null : totalprecipMm,
        "totalprecip_in": totalprecipIn == null ? null : totalprecipIn,
        "avgvis_km": avgvisKm == null ? null : avgvisKm,
        "avgvis_miles": avgvisMiles == null ? null : avgvisMiles,
        "avghumidity": avghumidity == null ? null : avghumidity,
        "condition": condition == null ? null : condition.toMap(),
        "uv": uv == null ? null : uv,
    };
}

class Location {
    final String name;
    final String region;
    final String country;
    final double lat;
    final double lon;
    final String tzId;
    final int localtimeEpoch;
    final String localtime;

    Location({
        this.name,
        this.region,
        this.country,
        this.lat,
        this.lon,
        this.tzId,
        this.localtimeEpoch,
        this.localtime,
    });

    Location copyWith({
        String name,
        String region,
        String country,
        double lat,
        double lon,
        String tzId,
        int localtimeEpoch,
        String localtime,
    }) => 
        Location(
            name: name ?? this.name,
            region: region ?? this.region,
            country: country ?? this.country,
            lat: lat ?? this.lat,
            lon: lon ?? this.lon,
            tzId: tzId ?? this.tzId,
            localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
            localtime: localtime ?? this.localtime,
        );

    factory Location.fromMap(Map<String, dynamic> json) => Location(
        name: json["name"] == null ? null : json["name"],
        region: json["region"] == null ? null : json["region"],
        country: json["country"] == null ? null : json["country"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
        tzId: json["tz_id"] == null ? null : json["tz_id"],
        localtimeEpoch: json["localtime_epoch"] == null ? null : json["localtime_epoch"],
        localtime: json["localtime"] == null ? null : json["localtime"],
    );

    Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "region": region == null ? null : region,
        "country": country == null ? null : country,
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
        "tz_id": tzId == null ? null : tzId,
        "localtime_epoch": localtimeEpoch == null ? null : localtimeEpoch,
        "localtime": localtime == null ? null : localtime,
    };
}
