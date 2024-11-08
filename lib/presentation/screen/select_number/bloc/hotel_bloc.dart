import 'package:bloc/bloc.dart';
import 'package:test_digital_sheet/data/models/hotel/hotel.dart';
import 'package:test_digital_sheet/domain/repositories/hotel.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc( this._hotelRepository) : super(const HotelInitialState()) {
    on<HotelLoadingEvent>(_loading);
  }
  final HotelRepository _hotelRepository;

  Future<void> _loading(
    HotelLoadingEvent event,
    Emitter<HotelState> emit,
  ) async {
    emit(const HotelLoadingState());
    final res = await _hotelRepository.getHotels();
    if (res.success) {
      emit(HotelLoadSuccesState(res.data!));
    } else {
      emit(
        HotelStateLoadFailure(exception: Exception(res.message)),
      );
    }
  }
}
