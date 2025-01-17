import 'package:kPharma/features/personalization/screens/address/widgets/single_address_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../shop/controllers/dummy_data.dart';
import '../../controllers/address_controller.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = AddressController.instance;
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          KCircularIcon(
              icon: Iconsax.add,
              onPressed: () => Get.to(() => const AddNewAddressScreen()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: KDummyData.user.addresses!
                .map((address) => KSingleAddress(
                    address: address,
                    onTap: () => controller.selectedAddress.value = address))
                .toList(),
          ),
        ),
      ),
    );
  }
}
