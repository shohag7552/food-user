
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_user_app/app/utils/font_size.dart';
import 'package:food_user_app/app/utils/padding_size.dart';
import 'package:food_user_app/app/utils/radius_size.dart';
import 'package:food_user_app/app/utils/style.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool isPassword;
  final Function? onChanged;
  final Function? onSubmit;
  final bool isEnabled;
  final int maxLines;
  final TextCapitalization capitalization;
  final IconData? prefixIcon;
  final double iconSize;
  final bool divider;
  final String? title;
  final bool isAmount;
  final bool isNumber;
  final bool showBorder;
  final Color? borderColor;
  final Widget? suffixChild;
  final int? maxLength;
  final Function? onEditingComplete;

  const CustomTextFieldWidget({
    super.key,
    this.hintText = 'Write something...',
    this.controller,
    this.focusNode,
    this.nextFocus,
    this.isEnabled = true,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.maxLines = 1,
    this.onSubmit,
    this.onChanged,
    this.capitalization = TextCapitalization.none,
    this.isPassword = false,
    this.divider = false,
    this.isAmount = false,
    this.isNumber = false,
    this.prefixIcon,
    this.iconSize = 18,
    this.borderColor,
    this.showBorder = true,
    this.suffixChild,
    this.maxLength,
    this.onEditingComplete,
    this.title,
  });

  @override
  CustomTextFieldWidgetState createState() => CustomTextFieldWidgetState();
}

class CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        widget.title != null ? Padding(
          padding: const EdgeInsets.only(left: PaddingSize.large, bottom: PaddingSize.extraSmall),
          child: Text(widget.title!, style: fontStyleMedium.copyWith(fontSize: FontSize.small)),
        ) : const SizedBox(),

        TextFormField(
          maxLines: widget.maxLines,
          controller: widget.controller,
          focusNode: widget.focusNode,
          style: fontStyleNormal.copyWith(fontSize: FontSize.medium),
          textInputAction: widget.inputAction,
          keyboardType: widget.isAmount ? const TextInputType.numberWithOptions(decimal: true) : widget.isNumber ? TextInputType.number : widget.inputType,
          cursorColor: Theme.of(context).primaryColor,
          textCapitalization: widget.capitalization,
          enabled: widget.isEnabled,
          autofocus: false,
          maxLength: widget.maxLength,
          autofillHints: widget.inputType == TextInputType.name ? [AutofillHints.name]
              : widget.inputType == TextInputType.emailAddress ? [AutofillHints.email]
              : widget.inputType == TextInputType.phone ? [AutofillHints.telephoneNumber]
              : widget.inputType == TextInputType.streetAddress ? [AutofillHints.fullStreetAddress]
              : widget.inputType == TextInputType.url ? [AutofillHints.url]
              : widget.inputType == TextInputType.visiblePassword ? [AutofillHints.password] : null,
          obscureText: widget.isPassword ? _obscureText : false,
          inputFormatters: widget.inputType == TextInputType.phone ? <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp('[0-9+]'))]
              : widget.isAmount ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))] : widget.isNumber ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))] : null,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusSize.medium),
              borderSide: BorderSide(style: widget.showBorder ? BorderStyle.solid : BorderStyle.none, width: 0.5, color: Theme.of(context).disabledColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusSize.medium),
              borderSide: BorderSide(style: widget.showBorder ? BorderStyle.solid : BorderStyle.none, width: 1, color: Theme.of(context).primaryColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusSize.medium),
              borderSide: BorderSide(style: widget.showBorder ? BorderStyle.solid : BorderStyle.none, width: 0.5, color: Theme.of(context).primaryColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusSize.medium),
              borderSide: BorderSide(style: widget.showBorder ? BorderStyle.solid : BorderStyle.none, color: Theme.of(context).colorScheme.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusSize.medium),
              borderSide: BorderSide(style: widget.showBorder ? BorderStyle.solid : BorderStyle.none, color: Theme.of(context).colorScheme.error),
            ),
            isDense: true,
            hintText: widget.hintText,
            fillColor: Theme.of(context).cardColor,
            hintStyle: fontStyleMedium.copyWith(color: Theme.of(context).hintColor),
            filled: true,

            // labelStyle : widget.showLabelText ? robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault, color: Theme.of(context).hintColor) : null,
            // errorStyle: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall),

            // label: widget.showLabelText ? Text.rich(TextSpan(children: [
            //
            //   TextSpan(text: widget.labelText ?? '', style: robotoRegular.copyWith(fontSize: widget.labelTextSize ?? Dimensions.fontSizeLarge, color: Theme.of(context).hintColor.withOpacity(.75))),
            //
            //   if(widget.required && widget.labelText != null)
            //     TextSpan(text : ' *', style: robotoRegular.copyWith(color: Theme.of(context).colorScheme.error, fontSize: Dimensions.fontSizeLarge)),
            //
            //   // if(widget.isEnabled == false)
            //   //   TextSpan(text: widget.fromUpdateProfile ? ' (${'phone_number_can_not_be_edited'.tr})' : ' (${'non_changeable'.tr})', style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).colorScheme.error)),
            //
            // ])) : null,

            prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon, size: widget.iconSize, color: Theme.of(context).disabledColor.withOpacity(0.4)) : null,
            suffixIcon: widget.isPassword ? IconButton(
              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility, color: Theme.of(context).hintColor.withOpacity(0.3)),
              onPressed: _toggle,
            ) : widget.suffixChild,
          ),
          onFieldSubmitted: (text) => widget.nextFocus != null ? FocusScope.of(context).requestFocus(widget.nextFocus)
              : widget.onSubmit != null ? widget.onSubmit!(text) : null,
          onChanged: widget.onChanged as void Function(String)?,
          onEditingComplete: widget.onEditingComplete as void Function()?,
        ),

      ],
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
