import 'package:test_digital_sheet/core/functions/safe_api_call.dart';
import 'package:test_digital_sheet/core/resources/data_state.dart';
import 'package:test_digital_sheet/data/data_sources/rest_client.dart';
import 'package:test_digital_sheet/data/models/hotel/hotel.dart';

class HotelRepository {
  final RestClient _restClient;

  HotelRepository({required RestClient restClient}) : _restClient = restClient;

  Future<DataState<List<Hotel>>> getHotels() async {
    final apiToBeCalled = _restClient.getHotels();
    return await safeApiCall(apiToBeCalled);
  }
}
