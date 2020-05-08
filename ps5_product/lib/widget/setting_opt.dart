import 'package:flutter/material.dart';
import 'package:ps5_product/constants.dart';
import 'package:ps5_product/model/option.dart';

class SettingAndOpt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.short_text,
            color: kIconBackgroundColor,
            size: 50,
          ),
          SizedBox(
            width: 10,
          ),
          _Options(
            selectedId: 2,
          ),
        ],
      ),
    );
  }
}

class _Options extends StatelessWidget {
  final int selectedId;

  const _Options({Key key, this.selectedId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          for (int index = 0; index < options.length; index++)
            _OptionWidget(
              option: options[index],
              isSelected: options[index].id == selectedId,
            )
        ],
      ),
    );
  }
}

class _OptionWidget extends StatelessWidget {
  final Option option;
  final bool isSelected;

  const _OptionWidget({Key key, this.option, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Material(
        elevation: 8,
        borderRadius: optionBorderRadius,
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: optionBorderRadius,
              color: isSelected ? kIconBackgroundColor : Colors.white),
          child: Image.asset(option.imagePath),
        ),
      ),
    );
  }
}