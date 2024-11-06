import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_digital_sheet/core/constant/constants.dart';
import 'package:test_digital_sheet/data/data_sources/endpoints.dart';
import 'package:test_digital_sheet/data/models/hotel/hotel.dart';
import 'package:test_digital_sheet/data/models/reservation/reservation.dart';
import 'package:test_digital_sheet/data/models/room/room.dart';


part 'rest_client.g.dart';

@RestApi(baseUrl: apiBaseURL)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET(EndPoints.hotels)
  Future<HttpResponse<List<Hotel>>> getHotels();

  @GET(EndPoints.rooms)
  Future<HttpResponse<List<Room>>> getRooms();

  @GET(EndPoints.reservations)
  Future<HttpResponse<List<Reservation>>> getReservations();
}