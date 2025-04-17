
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onboarding/features/authentication/controllers/onboarding_controller.dart';
import 'package:onboarding/utils/constants/colors.dart';
import 'package:onboarding/utils/constants/sizes.dart';
import 'package:onboarding/utils/helpers/helperFunctions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: THelpers.getBottomNavBarHeight(),
      child: ElevatedButton(
        onPressed: (){
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),foregroundColor: AppColors.white,backgroundColor: AppColors.black),
        child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
