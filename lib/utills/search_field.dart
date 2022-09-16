
import 'package:flutter/material.dart';
import 'package:sswap_nft/utills/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "search eg: infy, sgx, gold, crude oil...",
        hintStyle: TextStyle(fontSize: 13,color: grey),
        // fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            // padding: EdgeInsets.all(defaultPadding * 0.75),
            // margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: const BoxDecoration(
              // color: primaryColor,
              borderRadius:  BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(Icons.search_sharp,size: 18,),
          ),
        ),
      ),
    );
  }
}
