import 'package:flutter/material.dart';

import '../../common/widgets/notification_with_count.dart';
import '../../common/widgets/promotion_banner.dart';
import '../../common/widgets/user_greeting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 0.5,
        actions: const [
          NotificationWithCount(
            totalNotif: 50,
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UserGreeting(userName: 'Rizki Rachmanudin'),
          PromotionBanner<Widget>(
            listBanner: dummy,
            itemBannerBuilder: (ctx, index) {
              return _itemBanner(ctx, index);
            },
          ),
        ],
      ),
    );
  }

  _itemBanner(BuildContext ctx, int index) {
    return Container(
      width: MediaQuery.of(ctx).size.width - 100,
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: dummy[index]
    );
  }

  List<Widget> dummy = List.of([
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
  ]);
}
