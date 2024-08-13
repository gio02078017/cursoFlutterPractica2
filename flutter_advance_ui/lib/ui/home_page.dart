import 'package:card_swiper/controllers/swiper_controller.dart';
import 'package:card_swiper/widgets/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_ui/ui/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static final CardController _swiperController = CardController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: CardSwiper(
            controller: _swiperController,
            numberOfCardsDisplayed: 2,
            padding: EdgeInsets.zero,
            onSwipe: (_, __, direction) {
              return true;
            },
            cardsCount: 5,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) {
              return CustomCard(index: index);
            },
          ),
        ),
      ),
    );
  }
}