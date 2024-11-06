// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  AboutHotel get aboutHotel => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int get minimalPrice => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;

  /// Serializes this Hotel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hotel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {AboutHotel aboutHotel,
      String address,
      int id,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      String name,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName});

  $AboutHotelCopyWith<$Res> get aboutHotel;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hotel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutHotel = null,
    Object? address = null,
    Object? id = null,
    Object? imageUrls = null,
    Object? minimalPrice = null,
    Object? name = null,
    Object? rating = null,
    Object? ratingName = null,
  }) {
    return _then(_value.copyWith(
      aboutHotel: null == aboutHotel
          ? _value.aboutHotel
          : aboutHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Hotel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutHotelCopyWith<$Res> get aboutHotel {
    return $AboutHotelCopyWith<$Res>(_value.aboutHotel, (value) {
      return _then(_value.copyWith(aboutHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelImplCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$HotelImplCopyWith(
          _$HotelImpl value, $Res Function(_$HotelImpl) then) =
      __$$HotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AboutHotel aboutHotel,
      String address,
      int id,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      String name,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName});

  @override
  $AboutHotelCopyWith<$Res> get aboutHotel;
}

/// @nodoc
class __$$HotelImplCopyWithImpl<$Res>
    extends _$HotelCopyWithImpl<$Res, _$HotelImpl>
    implements _$$HotelImplCopyWith<$Res> {
  __$$HotelImplCopyWithImpl(
      _$HotelImpl _value, $Res Function(_$HotelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hotel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutHotel = null,
    Object? address = null,
    Object? id = null,
    Object? imageUrls = null,
    Object? minimalPrice = null,
    Object? name = null,
    Object? rating = null,
    Object? ratingName = null,
  }) {
    return _then(_$HotelImpl(
      aboutHotel: null == aboutHotel
          ? _value.aboutHotel
          : aboutHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelImpl with DiagnosticableTreeMixin implements _Hotel {
  const _$HotelImpl(
      {required this.aboutHotel,
      required this.address,
      required this.id,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      required this.name,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName})
      : _imageUrls = imageUrls;

  factory _$HotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelImplFromJson(json);

  @override
  final AboutHotel aboutHotel;
  @override
  final String address;
  @override
  final int id;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey(name: 'minimal_price')
  final int minimalPrice;
  @override
  final String name;
  @override
  final int rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hotel(aboutHotel: $aboutHotel, address: $address, id: $id, imageUrls: $imageUrls, minimalPrice: $minimalPrice, name: $name, rating: $rating, ratingName: $ratingName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Hotel'))
      ..add(DiagnosticsProperty('aboutHotel', aboutHotel))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrls', imageUrls))
      ..add(DiagnosticsProperty('minimalPrice', minimalPrice))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('ratingName', ratingName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImpl &&
            (identical(other.aboutHotel, aboutHotel) ||
                other.aboutHotel == aboutHotel) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutHotel,
      address,
      id,
      const DeepCollectionEquality().hash(_imageUrls),
      minimalPrice,
      name,
      rating,
      ratingName);

  /// Create a copy of Hotel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      __$$HotelImplCopyWithImpl<_$HotelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelImplToJson(
      this,
    );
  }
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
          {required final AboutHotel aboutHotel,
          required final String address,
          required final int id,
          @JsonKey(name: 'image_urls') required final List<String> imageUrls,
          @JsonKey(name: 'minimal_price') required final int minimalPrice,
          required final String name,
          required final int rating,
          @JsonKey(name: 'rating_name') required final String ratingName}) =
      _$HotelImpl;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$HotelImpl.fromJson;

  @override
  AboutHotel get aboutHotel;
  @override
  String get address;
  @override
  int get id;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(name: 'minimal_price')
  int get minimalPrice;
  @override
  String get name;
  @override
  int get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;

  /// Create a copy of Hotel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
