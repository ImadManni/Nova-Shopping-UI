import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
    required this.outLineInputBorder,
  });

  final OutlineInputBorder outLineInputBorder;

  @override
  Widget build(BuildContext context) {
    return Form(child: TextFormField(
      decoration: InputDecoration(
          hintText: "Search items...",
          filled: true,
          fillColor: Colors.white,
          border: outLineInputBorder,
          enabledBorder: outLineInputBorder,
          focusedBorder: outLineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(defaultBorderRadius))),

              ),
              child: SvgPicture.asset("assets/icons/Filter.svg"),
            ),
          )
      ),
    ),
    );
  }
}

const OutlineInputBorder outLineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);