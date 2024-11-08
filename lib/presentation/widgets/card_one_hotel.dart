

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test_digital_sheet/config/UI/app_colors.dart';
import 'package:test_digital_sheet/data/models/hotel/hotel.dart';

class CardOneHotel extends StatelessWidget {
  const CardOneHotel({super.key, required this.hotel});
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderImages(
            imageUrls: hotel.imageUrls,
          ),
          RatingWidget(
            rating: hotel.rating,
            ratingName: hotel.ratingName,
          ),
          InfoHotel(
            hotel: hotel,
          ),
        ],
      ),
    );
  }
}

class InfoHotel extends StatelessWidget {
  const InfoHotel({super.key, required this.hotel});
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Text(
          hotel.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          hotel.address,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.hex0572ff,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Text(
                'от ${hotel.minimalPrice} ₽',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Text(
                  'за тур с перелетом',
                  style: TextStyle(
                    color: AppColors.hex747371,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
    required this.ratingName,
  });
  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.hexFfebbf,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Icon(
              Icons.star,
              color: AppColors.hexFeba03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                rating.toString(),
                style: TextStyle(
                  color: AppColors.hexFeba03,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              ratingName,
              style: TextStyle(
                color: AppColors.hexFeba03,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderImages extends StatelessWidget {
  const SliderImages({super.key, required this.imageUrls});
  final List<String> imageUrls;
  @override
  Widget build(BuildContext context) {
    return imageUrls.isEmpty
        ? const SizedBox(
            height: 250,
            child: Text('Нет фото'),
          )
        : SizedBox(
            height: 250,
            child: IntroductionScreen(
              freeze: false,
              rawPages: imageUrls
                  .map(
                    (e) => ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Text('dsdsd'),
                      ),
                    ),
                  )
                  .toList(),
              showNextButton: false,
              showDoneButton: false,
              dotsDecorator: DotsDecorator(
                activeSize: const Size.square(10.0),
                size: const Size.square(10.0),
                color: AppColors.hex747371,
                activeColor: AppColors.hex020100,
              ),
            ),
          );
  }
}
