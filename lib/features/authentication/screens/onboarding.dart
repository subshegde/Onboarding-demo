import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/features/authentication/controllers/onboarding_controller.dart';
import 'package:onboarding/features/authentication/widgets/onboarding.dart';
import 'package:onboarding/features/authentication/widgets/onboarding_nextbutton.dart';
import 'package:onboarding/features/authentication/widgets/onboarding_skip.dart';
import 'package:onboarding/features/authentication/widgets/onboarding_smooth_indicator.dart';
import 'package:onboarding/utils/assets/gifs_settings.dart';
import 'package:onboarding/utils/constants/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
               Onboarding(
                image: AppGifs.travel0,
                title: 'Welcome to Your Adventure',
                subtitle: 'Explore the world with us. Your journey starts here.'
              ),
              Onboarding(
                image: AppGifs.travel1,
                title: 'Welcome to Your Adventure',
                subtitle: 'Explore the world with us. Your journey starts here.'
              ),
              Onboarding(
                image: AppGifs.travel2,
                title: 'Welcome to Your Adventure',
                subtitle: 'Explore the world with us. Your journey starts here.'
              ),
            ],
          ),

          // skip button
          const OnBoardingSkip(),

          //dot navigation smoothPageIndicator
          const OnBoardingSmoothIndicator(),

          // circular next button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
