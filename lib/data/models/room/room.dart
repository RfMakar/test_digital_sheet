import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'room.freezed.dart';

part 'room.g.dart';

@freezed
class Room with _$Room {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Room({
  required int id,
  required List<String> imageUrls,
  required String name,
  required List<String> pecularities,
  required int price,
  required String pricePer, 


  }) = _Room;

  factory Room.fromJson(Map<String, Object?> json) => _$RoomFromJson(json);
}
