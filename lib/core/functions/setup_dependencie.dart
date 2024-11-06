import 'package:dio/dio.dart';
import 'package:test_digital_sheet/core/utils/sl.dart';
import 'package:test_digital_sheet/data/data_sources/dio_client.dart';
import 'package:test_digital_sheet/data/data_sources/rest_client.dart';
import 'package:test_digital_sheet/domain/repository/hotel.dart';
import 'package:test_digital_sheet/domain/repository/reservation.dart';
import 'package:test_digital_sheet/domain/repository/room.dart';

Future<void> setupDependencies() async {
  //Dio
  sl.registerLazySingleton<DioClient>(
    () => DioClient(
      dio: Dio(),
    )..init(),
  );
  //
  sl.registerLazySingleton<RestClient>(
    () => RestClient(
      sl<DioClient>().dio,
    ),
  );
  //repo
  sl.registerLazySingleton<HotelRepository>(
    () => HotelRepository(
      restClient: sl(),
    ),
  );
  sl.registerLazySingleton<RoomRepository>(
    () => RoomRepository(
      restClient: sl(),
    ),
  );
  sl.registerLazySingleton<ReservationRepository>(
    () => ReservationRepository(
      restClient: sl(),
    ),
  );
}
