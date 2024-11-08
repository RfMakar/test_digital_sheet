part of 'hotel_bloc.dart';

sealed class HotelState {
  const HotelState();
}

final class HotelInitialState extends HotelState {
  const HotelInitialState();
}

final class HotelLoadingState extends HotelState {
  const HotelLoadingState();
}

final class HotelLoadSuccesState extends HotelState {
  const HotelLoadSuccesState(this.hotels);
  final List<Hotel> hotels;
}

final class HotelStateLoadFailure extends HotelState {
  const HotelStateLoadFailure({required this.exception});
  final Exception exception;
}
