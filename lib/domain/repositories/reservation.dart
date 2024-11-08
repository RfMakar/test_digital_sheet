import 'package:test_digital_sheet/core/functions/safe_api_call.dart';
import 'package:test_digital_sheet/core/resources/data_state.dart';
import 'package:test_digital_sheet/data/data_sources/rest_client.dart';
import 'package:test_digital_sheet/data/models/reservation/reservation.dart';

class ReservationRepository {
  final RestClient _restClient;

  ReservationRepository({required RestClient restClient}) : _restClient = restClient;

  Future<DataState<List<Reservation>>> getReservations() async {
    final apiToBeCalled = _restClient.getReservations();
    return await safeApiCall(apiToBeCalled);
  }
}
