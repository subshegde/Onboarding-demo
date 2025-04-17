
import 'package:flutter/widgets.dart';
import 'package:onboarding/features/authentication/controllers/onboarding_controller.dart';
import 'package:onboarding/utils/constants/colors.dart';
import 'package:onboarding/utils/constants/sizes.dart';
import 'package:onboarding/utils/helpers/helperFunctions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothIndicator extends StatelessWidget {
  const OnBoardingSmoothIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: THelpers.getBottomNavBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigationClick,
        effect: const ExpandingDotsEffect(activeDotColor: AppColors.black,dotHeight: 6),
        controller: controller.pageController, count: 3));
  }
}
