import 'package:test_digital_sheet/core/utils/logger.dart';
import 'package:test_digital_sheet/core/utils/sl.dart';
import 'package:test_digital_sheet/domain/repository/hotel.dart';
import 'package:test_digital_sheet/domain/repository/reservation.dart';
import 'package:test_digital_sheet/domain/repository/room.dart';

Future<void> testRepo() async {
  final hotelsRepository = sl<HotelRepository>();
  final resHotels = await hotelsRepository.getHotels();
  if (resHotels.success) {
    logger.i(resHotels.data);
  } else {
    logger.e(resHotels.message);
  }
  //
  final roomsRepository = sl<RoomRepository>();
  final resRooms = await roomsRepository.getRooms();
  if (resRooms.success) {
    logger.i(resRooms.data);
  } else {
    logger.e(resRooms.message);
  }
  //
  final reservationsRepository = sl<ReservationRepository>();
  final resReservations = await reservationsRepository.getReservations();
  if (resReservations.success) {
    logger.i(resReservations.data);
  } else {
    logger.e(resReservations.message);
  }
}
