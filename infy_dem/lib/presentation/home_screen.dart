import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infy_dem/application/home_cubit.dart';
import 'package:infy_dem/application/home_state.dart';
import 'package:infy_dem/components/home_component.dart';
import 'package:infy_dem/widgets/app_bar.dart';
import 'package:infy_dem/widgets/txt_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeCubit>(context).getHomeAPI();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        if (state is HomeStateInitial) {
          return const Center(child: CupertinoActivityIndicator());
        } else if (state is HomeStateLoading) {
          return const Center(child: CupertinoActivityIndicator());
        } else if (state is HomeStateSuccess) {
          return HomeComponent(homeData: state.homeModel);
        } else if (state is HomeStateError) {
          return const Center(
            child: TxtWidget(
              title: ("Error Loading Data"),
              txtColor: Colors.red,
            ),
          );
        }
        return Container();
      }),
    );
  }
}
