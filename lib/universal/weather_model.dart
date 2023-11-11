import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_condition_model.dart';
import 'day_model.dart';


part 'weather_model.freezed.dart';
part 'weather_model.g.dart';


@freezed
class Weather with _$Weather {
  const factory Weather({
    int? queryCost,
    double? latitude,
    double? longitude,
    String? resolvedAddress,
    String? address,
    String? timezone,
    double? tzoffset,
    String? description,
    List<Day>? days,
    required CurrentCondition currentConditions,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}