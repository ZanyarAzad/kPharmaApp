import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/circular_container.dart';

/// -- Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
class KChoiceChip extends StatelessWidget {
  /// Create a chip that acts like a radio button.
  /// The label, selected, autofocus, and clipBehavior arguments must not be null.
  /// The pressElevation and elevation must be null or non-negative.
  /// Typically, pressElevation is greater than elevation.
  const KChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        // Use this function to get Colors as a Chip
        avatar: KHelperFunctions.getColor(text) != null
            ? KCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: KHelperFunctions.getColor(text)!)
            : null,
        label: KHelperFunctions.getColor(text) == null
            ? Text(text)
            : const SizedBox(),
        selected: selected,
        onSelected: onSelected,
        labelPadding: KHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: KHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        shape: KHelperFunctions.getColor(text) != null
            ? const CircleBorder()
            : null,
        backgroundColor: KHelperFunctions.getColor(text) != null
            ? KHelperFunctions.getColor(text)!
            : null,
        labelStyle: TextStyle(color: selected ? KColors.white : null),
      ),
    );
  }
}
