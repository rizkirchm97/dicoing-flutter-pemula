import 'package:flutter/material.dart';

class PromotionBanner<T> extends StatefulWidget {
  const PromotionBanner({
    required List<T> listBanner,
    required Widget Function(BuildContext ctx, int index) itemBannerBuilder,
    Key? key,
  })  : _listBanner = listBanner,
        _itemBannerBuilder = itemBannerBuilder,
        super(key: key);

  final List<T> _listBanner;

  final Widget Function(BuildContext ctx, int index) _itemBannerBuilder;

  @override
  State<PromotionBanner> createState() => _PromotionBannerState();
}

class _PromotionBannerState extends State<PromotionBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget._listBanner.length,
        itemBuilder: (BuildContext ctx, index) {
          return widget._itemBannerBuilder(ctx, index);
        },
      ),
    );
  }


}
