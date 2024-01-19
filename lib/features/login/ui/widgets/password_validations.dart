import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/style/app_color.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 1 numbers ', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidate) => Row(
        children: [
          CircleAvatar(
            radius: 2.5.r,
            backgroundColor: AppColor.gray,
          ),
          horiontalSpace(6.0),
          Text(
            text,
            style: AppText.text13DarkBlueRegular.copyWith(
              decoration: hasValidate ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationStyle: TextDecorationStyle.solid,
              color: hasValidate ? AppColor.gray : AppColor.darkBlue,
            ),
          ),
        ],
      );
}
