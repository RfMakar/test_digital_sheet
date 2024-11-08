import 'package:test_digital_sheet/core/utils/logger.dart';
import 'package:test_digital_sheet/core/utils/sl.dart';
import 'package:test_digital_sheet/domain/repositories/hotel.dart';
import 'package:test_digital_sheet/domain/repositories/reservation.dart';
import 'package:test_digital_sheet/domain/repositories/room.dart';

final hotelsRepository = sl<HotelRepository>();
final roomsRepository = sl<RoomRepository>();
final reservationsRepository = sl<ReservationRepository>();

Future<void> testRepo() async {
  final resHotels = await hotelsRepository.getHotels();
  if (resHotels.success) {
    logger.i(resHotels.data);
  } else {
    logger.e(resHotels.message);
  }
  //

  final resRooms = await roomsRepository.getRooms();
  if (resRooms.success) {
    logger.i(resRooms.data);
  } else {
    logger.e(resRooms.message);
  }
  //

  final resReservations = await reservationsRepository.getReservations();
  if (resReservations.success) {
    logger.i(resReservations.data);
  } else {
    logger.e(resReservations.message);
  }
}

