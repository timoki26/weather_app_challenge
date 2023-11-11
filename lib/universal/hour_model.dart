import 'package:freezed_annotation/freezed_annotation.dart';


part 'hour_model.freezed.dart';
part 'hour_model.g.dart';


@freezed
class Hour with _$Hour {
  const factory Hour({
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
    List<String>? preciptype,
    double? windgust,
    double? windspeed,
    double? winddir,
    double? pressure,
    double? visibility,
    double? cloudcover,
    double? solarradiation,
    double? solarenergy,
    double? uvindex,
    double? severerisk,
    String? conditions,
    String? icon,
    List<String>? stations,
    String? source,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}