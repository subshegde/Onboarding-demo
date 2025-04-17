
import 'package:flutter/widgets.dart';
import 'package:onboarding/utils/constants/colors.dart';
import 'package:onboarding/utils/constants/sizes.dart';
import 'package:onboarding/utils/helpers/helperFunctions.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
    required this.image,required this.subtitle,required this.title
  });

  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: THelpers.screenWidth() * 0.8,
            height: THelpers.screenHeight() * 0.5,
            image:  AssetImage(image),
          ),
    
          const SizedBox(height: TSizes.spaceBetweenSections),
    
           Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
    
          const SizedBox(height: TSizes.spaceBetweenItems),
    
           Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
