import 'package:flutter/services.dart';
import 'package:news/src/core/core.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.errorText,
    this.suffixIcon,
    this.inputAction = TextInputAction.unspecified,
    this.inputType = TextInputType.text,
    this.borderSide = const BorderSide(),
    this.controller,
    this.labelText,
    this.readOnly = false,
    this.onTap,
    this.isPasswordField = false,
    this.suffix,
    this.prefix,
    this.prefixIcon,
    this.borderRadius,
    this.textCapitalization,
    this.fieldContentPadding,
    this.initialValues,
    this.validators,
    this.maxLines = 1,
    this.inputFormatters = const [],
    this.hintStyle,
    this.fillColor,
    this.autoFocus,
    this.textFieldLabel,
    this.isBorderNone = true,
    this.labelStyle,
  });
  final String? hintText;
  final void Function(String)? onChanged;
  final String? errorText;
  final Widget? suffixIcon;
  final TextInputAction? inputAction;
  final TextInputType inputType;
  final BorderSide? borderSide;
  final TextEditingController? controller;
  final String? labelText;
  final bool readOnly;
  final VoidCallback? onTap;

  final bool isPasswordField;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? prefixIcon;
  final BorderRadius? borderRadius;
  final TextCapitalization? textCapitalization;
  final EdgeInsets? fieldContentPadding;
  final String? initialValues;
  final String? Function(String? value)? validators;
  final TextStyle? hintStyle;
  final bool? autoFocus;
  final int? maxLines;
  final List<TextInputFormatter> inputFormatters;
  final String? textFieldLabel;
  final bool isBorderNone;
  final TextStyle? labelStyle;

  Color? fillColor = AppColors.white;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  BorderRadius get radius => widget.borderRadius ?? BorderRadius.circular(8);

  late ValueNotifier<bool> _isObscure;
  bool get hasError => widget.errorText != null && widget.errorText!.isNotEmpty;
  BorderSide get buildBorderSide =>
      widget.borderSide ??
      BorderSide(
        color: hasError ? AppColors.statusRed : AppColors.primaryColor,
        width: 1,
      );
  @override
  void initState() {
    super.initState();
    _isObscure = ValueNotifier(widget.isPasswordField);
  }

  @override
  void dispose() {
    super.dispose();
    _isObscure.dispose();
  }

  Color fillColor = AppColors.textFieldColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.textFieldLabel != null)
          Text(
            widget.textFieldLabel ?? "",
            style: AppTextStyles.text14Px.copyWith(color: const Color(0xFF939393)),
          ).pOnly(left: !widget.isBorderNone ? 10 : 0),
        if (widget.textFieldLabel != null && widget.isBorderNone) 10.verticalSpace,
        ValueListenableBuilder(
          valueListenable: _isObscure,
          builder: (context, value, _) {
            return TextFormField(
              autofocus: widget.autoFocus ?? false,
              initialValue: widget.initialValues,
              inputFormatters: widget.inputFormatters,
              obscureText: value,
              style: widget.labelStyle ?? AppTextStyles.text14PxMedium,
              controller: widget.controller,
              keyboardType: widget.inputType,
              onTap: widget.onTap,
              textInputAction: widget.inputAction,
              onChanged: widget.onChanged,
              maxLines: widget.maxLines,
              validator: widget.validators,
              textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
              readOnly: widget.readOnly,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fillColor,
                contentPadding: widget.fieldContentPadding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
                border: OutlineInputBorder(
                  borderRadius: radius,
                  borderSide: buildBorderSide.copyWith(color: AppColors.border),
                ),
                focusColor: AppColors.primaryColor,
                errorBorder: OutlineInputBorder(
                  borderRadius: radius,
                  borderSide: buildBorderSide,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: radius,
                  borderSide: buildBorderSide.copyWith(color: AppColors.border),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: radius,
                  borderSide: buildBorderSide.copyWith(color: AppColors.border),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: radius,
                    borderSide: const BorderSide(
                      color: AppColors.statusRed,
                      width: 1,
                    )),
                errorText: widget.errorText != null && widget.errorText!.isNotEmpty ? widget.errorText : null,
                hintText: widget.hintText,
                suffixIcon: widget.isPasswordField
                    ? GestureDetector(
                        onTap: () {
                          _isObscure.value = !_isObscure.value;
                        },
                        child: value
                            ? Icon(
                                Icons.visibility_outlined,
                                size: 23,
                                color: AppColors.textGrey.withOpacity(.4),
                              )
                            : Icon(
                                Icons.visibility_off_outlined,
                                color: AppColors.textGrey.withOpacity(.4),
                                size: 23,
                              ),
                      )
                    : hasError && !widget.isPasswordField && widget.suffixIcon == null
                        ? const Icon(Icons.error_outline)
                        : widget.suffixIcon,
                suffix: widget.suffix,
                prefix: widget.prefix,
                prefixIcon: widget.prefixIcon != null
                    ? widget.fieldContentPadding != null
                        ? SizedBox(
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  5.horizontalSpace,
                                  widget.prefixIcon ?? const SizedBox(),
                                  3.horizontalSpace,
                                ],
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  widget.prefixIcon ?? const SizedBox(),
                                  3.horizontalSpace,
                                ],
                              ),
                            ),
                          )
                    : null,
                labelText: widget.labelText,
                labelStyle: widget.labelStyle ??
                    AppTextStyles.text14PxMedium.copyWith(
                      color: AppColors.textLightDark,
                    ),
                hintStyle: widget.hintStyle ??
                    AppTextStyles.text14Px.copyWith(
                      color: AppColors.tileGrey.withOpacity(.5),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}
