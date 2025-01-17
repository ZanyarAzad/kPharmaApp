import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/dummy_data.dart';

class KOrderListItems extends StatelessWidget {
  const KOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: KDummyData.orders.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, index) =>
          const SizedBox(height: KSizes.spaceBtwItems),
      itemBuilder: (_, index) {
        final order = KDummyData.orders[index];
        return KRoundedContainer(
          showBorder: true,
          backgroundColor: KHelperFunctions.isDarkMode(context)
              ? KColors.dark
              : KColors.light,
          child: Column(
            children: [
              /// -- Row 1
              Row(
                children: [
                  /// 1 - Icon
                  const Icon(Iconsax.ship),
                  const SizedBox(width: KSizes.spaceBtwItems / 2),

                  /// 2 - Status & Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.orderStatusText,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: KColors.primary, fontWeightDelta: 1),
                        ),
                        Text(order.formattedOrderDate,
                            style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                  ),

                  /// 3 - Icon
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.arrow_right_34,
                          size: KSizes.iconSm)),
                ],
              ),
              const SizedBox(height: KSizes.spaceBtwItems),

              /// -- Bottom Row
              Row(
                children: [
                  /// Order No
                  Expanded(
                    child: Row(
                      children: [
                        /// 1 - Icon
                        const Icon(Iconsax.tag),
                        const SizedBox(width: KSizes.spaceBtwItems / 2),

                        /// Order
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                order.id,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Delivery Date
                  Expanded(
                    child: Row(
                      children: [
                        /// 1 - Icon
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: KSizes.spaceBtwItems / 2),

                        /// Status & Date
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Date',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                order.formattedDeliveryDate,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
