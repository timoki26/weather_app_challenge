import 'package:freezed_annotation/freezed_annotation.dart';


part 'current_condition_model.freezed.dart';
part 'current_condition_model.g.dart';


@freezed
class CurrentCondition with _$CurrentCondition {
  const factory CurrentCondition({
    String? datetime,
    double? datetimeEpoch,
    double? temp,
    double? feelslike,
    double? humidity,
    double? dew,
    double? precip,
    double? precipprob,
    double? snow,
    double? snowdepth,
    double? windgust,
    double? windspeed,
    double? winddir,
    double? pressure,
    double? visibility,
    double? cloudcover,
    double? solarradiation,
    double? solarenergy,
    double? uvindex,
    String? conditions,
    String? icon,
    List<String>? stations,
    String? source,
    String? sunrise,
    double? sunriseEpoch,
    String? sunset,
    double? sunsetEpoch,
    double? moonphase,
  }) = _CurrentCondition;

  factory CurrentCondition.fromJson(Map<String, dynamic> json) => _$CurrentConditionFromJson(json);
}