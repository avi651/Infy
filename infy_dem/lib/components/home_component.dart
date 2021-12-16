import 'package:flutter/material.dart';
import 'package:infy_dem/models/home_model.dart';
import 'package:infy_dem/widgets/list_view_widget.dart';

class HomeComponent extends StatelessWidget {
  final HomeModel? homeData;

  const HomeComponent({
    Key? key,
    this.homeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewWidget(
      getHomeData: homeData,
    );
  }
}
