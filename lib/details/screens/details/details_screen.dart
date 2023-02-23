import 'package:details/details/constants.dart';
import 'package:details/details/models/product.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:furniture_app/constants.dart';
// import 'package:furniture_app/models/product.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  Product? name;
   DetailsScreen({Key? key, this.product, this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        name: name!,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }
}
