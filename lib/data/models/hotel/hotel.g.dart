// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
      aboutHotel:
          AboutHotel.fromJson(json['aboutHotel'] as Map<String, dynamic>),
      address: json['address'] as String,
      id: (json['id'] as num).toInt(),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minimalPrice: (json['minimal_price'] as num).toInt(),
      name: json['name'] as String,
      rating: (json['rating'] as num).toInt(),
      ratingName: json['rating_name'] as String,
    );

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'aboutHotel': instance.aboutHotel,
      'address': instance.address,
      'id': instance.id,
      'image_urls': instance.imageUrls,
      'minimal_price': instance.minimalPrice,
      'name': instance.name,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
    };
