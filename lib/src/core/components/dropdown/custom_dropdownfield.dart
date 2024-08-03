import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/src/core/extenstion/extension.dart';
import 'package:news/src/core/theme/theme.dart';

class CustomDropdownFormField extends StatelessWidget {
  final List<String> items;
  final String? value;
  final ValueChanged<String?> onChanged;
  final FormFieldSetter<String?>? onSaved;
  final String? hint;

  const CustomDropdownFormField({
    Key? key,
    required this.items,
    required this.onChanged,
    this.onSaved,
    this.value,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: DropdownButtonFormField2<String>(
        isExpanded: true,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: "       $hint",
          hintStyle: AppTextStyles.text14PxBold,
          contentPadding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20),
        ),
        value: value,
        items: items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Row(
              children: [
                20.horizontalSpace,
                Text(item, style: AppTextStyles.text13PxSemiBold.black),
              ],
            ),
          );
        }).toList(),
        onChanged: onChanged,
        onSaved: onSaved,
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.black,
            size: 25,
          ),
          iconSize: 25,
        ),
        dropdownStyleData: DropdownStyleData(
          elevation: 0,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(padding: EdgeInsets.symmetric(horizontal: 0.0)),
      ),
    );
  }
}
