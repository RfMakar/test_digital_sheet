import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'about_hotel.freezed.dart';

part 'about_hotel.g.dart';

@freezed
class AboutHotel with _$AboutHotel {
  const factory AboutHotel({
    required String description,
    required List<String> pecularities,
  }) = _AboutHotel;

  factory AboutHotel.fromJson(Map<String, Object?> json) =>
      _$AboutHotelFromJson(json);
}
