import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_digital_sheet/config/UI/app_colors.dart';
import 'package:test_digital_sheet/core/utils/sl.dart';
import 'package:test_digital_sheet/data/models/hotel/hotel.dart';
import 'package:test_digital_sheet/domain/repositories/hotel.dart';
import 'package:test_digital_sheet/presentation/screen/select_number/bloc/hotel_bloc.dart';
import 'package:test_digital_sheet/presentation/widgets/card_one_hotel.dart';
import 'package:test_digital_sheet/presentation/widgets/card_two_hotel.dart';

class SelectionNumberScreen extends StatelessWidget {
  const SelectionNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hotelRepo = sl<HotelRepository>();
    return BlocProvider(
      create: (context) => HotelBloc(hotelRepo)
        ..add(
          HotelLoadingEvent(),
        ),
      child: const HotelView(),
    );
  }
}

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hexEeeeee,
      appBar: AppBar(
        title: const Text('Отель'),
      ),
      body: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          if (state is HotelLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is HotelLoadSuccesState) {
            return HotelsList(hotels: state.hotels);
          } else if (state is HotelStateLoadFailure) {
            return const Center(child: Text('Ошибка загрузки'));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class HotelsList extends StatelessWidget {
  const HotelsList({super.key, required this.hotels});
  final List<Hotel> hotels;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hotels.length,
      itemBuilder: (context, index) {
        return HotelCard(
          hotel: hotels[index],
        );
      },
    );
  }
}

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotel});
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardOneHotel(
          hotel: hotel,
        ),
        const SizedBox(
          height: 20,
        ),
        CardTwoHotel(hotel: hotel),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
