
import 'package:flutter/material.dart';
import 'package:onboarding/features/authentication/controllers/onboarding_controller.dart';
import 'package:onboarding/utils/constants/sizes.dart';
import 'package:onboarding/utils/helpers/helperFunctions.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: THelpers.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: 
    TextButton(
      onPressed: (){
        OnBoardingController.instance.skipPage();
      },
      child: const Text('Skip'),
      ));
  }
}
