import 'package:flutter/material.dart';
import 'package:zap_flutter/CommissionEarned.dart';

import 'ReceivedPayments.dart';
import 'SentPayments.dart';
import 'Authentication/constants.dart';
import 'package:get/get.dart';

class PaymentTab extends StatelessWidget {
  int tabSelected;

  PaymentTab(this.tabSelected);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'payment_bottom'.tr,
              style: TextStyle(fontFamily: "Sans"),
            ),
            backgroundColor: kPrimaryColorBlue,
          ),
          body: DefaultTabController(
            initialIndex: tabSelected,
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                // elevation: 0,
                toolbarHeight: 50.0,
                backgroundColor: kPrimaryColorBlue,
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'com_ear'.tr),
                    Tab(text: 'pay_received'.tr),
                    Tab(text: 'pay_sent'.tr),
                  ],
                  labelStyle: TextStyle(fontFamily: "Sans"),
                ),
              ),
              body: TabBarView(
                children: [
                  CommissionEarned(),
                  ReceivedPayment(),
                  SentPayment(),
                ],
              ),
            ),
          ),
        ));
  }
}
