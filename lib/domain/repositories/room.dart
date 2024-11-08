import 'package:test_digital_sheet/core/functions/safe_api_call.dart';
import 'package:test_digital_sheet/core/resources/data_state.dart';
import 'package:test_digital_sheet/data/data_sources/rest_client.dart';
import 'package:test_digital_sheet/data/models/room/room.dart';

class RoomRepository {
  final RestClient _restClient;

  RoomRepository({required RestClient restClient}) : _restClient = restClient;


  Future<DataState<List<Room>>> getRooms() async {
    final apiToBeCalled = _restClient.getRooms();
    return await safeApiCall(apiToBeCalled);
  }
}
