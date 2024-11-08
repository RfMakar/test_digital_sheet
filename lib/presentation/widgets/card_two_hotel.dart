import 'package:flutter/material.dart';
import 'package:test_digital_sheet/data/models/about_hotel/about_hotel.dart';
import 'package:test_digital_sheet/data/models/hotel/hotel.dart';

class CardTwoHotel extends StatelessWidget {
  const CardTwoHotel({super.key, required this.hotel});
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Об отеле',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Pecularities(
            aboutHotel: hotel.aboutHotel,
          ),
        ],
      ),
    );
  }
}

class Pecularities extends StatelessWidget {
  const Pecularities({super.key, required this.aboutHotel});
  final AboutHotel aboutHotel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: aboutHotel.pecularities
          .map(
            (e) => Text(e),
          )
          .toList(),
    );
  }
  
}
