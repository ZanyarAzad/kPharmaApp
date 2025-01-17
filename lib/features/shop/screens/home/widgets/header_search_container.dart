import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../search/search.dart';

class KSearchContainer extends StatelessWidget {
  const KSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const SearchScreen()),
      child: Padding(
        padding: padding,
        child: Container(
          width: KDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(KSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? KColors.dark
                    : KColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(KSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: KColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: dark ? KColors.darkerGrey : Colors.grey),
              const SizedBox(width: KSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
