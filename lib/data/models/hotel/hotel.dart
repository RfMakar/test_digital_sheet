import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:test_digital_sheet/data/models/about_hotel/about_hotel.dart';

part 'hotel.freezed.dart';

part 'hotel.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required AboutHotel aboutHotel,
    required String address,
    required int id,
    @JsonKey(name: 'image_urls') required List<String> imageUrls,
    @JsonKey(name: 'minimal_price') required int minimalPrice,
    required String name,
    required int rating,
    @JsonKey(name: 'rating_name') required String ratingName,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, Object?> json) => _$HotelFromJson(json);
}
