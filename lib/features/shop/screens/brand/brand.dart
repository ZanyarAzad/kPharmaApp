import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/brand_controller.dart';
import '../../models/brand_model.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key, required this.brand});

  final BrandModel brand;

  @override
  Widget build(BuildContext context) {
    final controller = BrandController.instance;
    final brandProducts = controller.getBrandProducts(brand.id);
    return Scaffold(
      appBar: const KAppBar(showBackArrow: true, title: Text('Brand')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              KBrandCard(brand: brand, showBorder: true),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Sub Categories
              const KSectionHeading(title: 'Products', showActionButton: false),
              const SizedBox(height: KSizes.spaceBtwItems),
              KSortableProducts(products: brandProducts)
            ],
          ),
        ),
      ),
    );
  }
}
