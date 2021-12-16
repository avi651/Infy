import 'package:flutter/material.dart';
import 'package:infy_dem/models/home_model.dart';
import 'package:infy_dem/widgets/txt_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListViewWidget extends StatelessWidget {
  final HomeModel? getHomeData;
  const ListViewWidget({
    Key? key,
    this.getHomeData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: getHomeData?.rows?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: (getHomeData?.rows?[index].imageHref == null ||
                  getHomeData?.rows?[index].imageHref == "")
              ? const SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.not_interested,
                    color: Colors.red,
                  ),
                )
              : SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: CachedNetworkImage(
                      imageUrl: getHomeData?.rows?[index].imageHref ?? "",
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter: const ColorFilter.mode(
                              Colors.red,
                              BlendMode.colorBurn,
                            ),
                          ),
                        ),
                      ),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
          title: TxtWidget(
            title: (getHomeData?.rows?[index].title ?? "-"),
            txtColor: Colors.black,
          ),
          subtitle: TxtWidget(
            title: (getHomeData?.rows?[index].description ?? "-"),
            txtColor: Colors.black87,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
