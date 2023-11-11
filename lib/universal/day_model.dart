import 'package:freezed_annotation/freezed_annotation.dart';

import 'hour_model.dart';


part 'day_model.freezed.dart';
part 'day_model.g.dart';


@freezed
class Day with _$Day {
  const factory Day({
    String? datetime,
    double? datetimeEpoch,
    double? tempmax,
    double? tempmin,
    double? temp,
    double? feelslikemax,
    double? feelslikemin,
    double? feelslike,
    double? dew,
    double? humidity,
    double? precip,
    double? precipprob,
    double? precipcover,
    List<String>? preciptype,
    double? snow,
    double? snowdepth,
    double? windgust,
    double? windspeed,
    double? winddir,
    double? pressure,
    double? cloudcover,
    double? visibility,
    double? solarradiation,
    double? solarenergy,
    double? uvindex,
    double? severerisk,
    String? sunrise,
    double? sunriseEpoch,
    String? sunset,
    double? sunsetEpoch,
    double? moonphase,
    String? conditions,
    String? description,
    String? icon,
    List<String>? stations,
    String? source,
    List<Hour>? hours,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}