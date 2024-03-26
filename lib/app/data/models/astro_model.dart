import 'package:equatable/equatable.dart';
import 'package:sanear/app/domain/entities/astro.dart';

class AstroModel extends Equatable {
  const AstroModel({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.moonIllumination,
  });

  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moonPhase;
  final String moonIllumination;

  factory AstroModel.fromJson(Map<String, dynamic> json) => AstroModel(
        sunrise: json["sunrise"].toString(),
        sunset: json["sunset"].toString(),
        moonrise: json["moonrise"].toString(),
        moonset: json["moonset"].toString(),
        moonPhase: json["moon_phase"].toString(),
        moonIllumination: json["moon_illumination"].toString(),
      );

  Astro toEntity() => Astro(
      sunrise: sunrise,
      sunset: sunset,
      moonrise: moonrise,
      moonset: moonset,
      moonPhase: moonPhase,
      moonIllumination: moonIllumination);

  @override
  List<Object?> get props => [
        sunrise,
        sunset,
        moonrise,
        moonset,
        moonPhase,
        moonIllumination,
      ];
}
