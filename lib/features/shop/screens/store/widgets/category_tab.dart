import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/store_controller.dart';
import '../../../models/category_model.dart';
import '../../all_products/all_products.dart';

class KCategoryTab extends StatelessWidget {
  const KCategoryTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final controller = StoreController.instance;
    final categoryBrands = controller.getCategoryBrands(category.id);
    final categoryProducts = controller.getCategoryProducts(category.id);
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              Column(
                children: categoryBrands
                    .map((brand) => KBrandShowcase(
                          brand: brand,
                          images: controller
                              .getBrandProducts(brand.id)
                              .map((e) => e.thumbnail)
                              .toList(),
                        ))
                    .toList(),
              ),
              const SizedBox(height: KSizes.spaceBtwSections * 2),

              /// -- Products
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KSectionHeading(
                    title: 'You might like',
                    onPressed: () => Get.to(AllProducts(
                        title: category.name, products: categoryProducts)),
                  ),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  KGridLayout(
                    itemCount: categoryProducts.length < 4
                        ? categoryProducts.length
                        : 4,
                    itemBuilder: (_, index) =>
                        KProductCardVertical(product: categoryProducts[index]),
                  ),
                ],
              ),

              const SizedBox(height: KSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
