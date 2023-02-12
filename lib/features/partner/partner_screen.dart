import 'package:cva_app/common/theme.dart';
import 'package:cva_app/widget/footer_widget.dart';
import 'package:flutter/material.dart';

class PartnerScreen extends StatelessWidget {
  const PartnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Partnership',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Text(
              'Mereka Yang Mendukung Bantuan Tunai Multi Guna dan Sektor',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/pos.png',
                  width: MediaQuery.of(context).size.width * 0.35,
                ),
                Image.asset(
                  'assets/crs.png',
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/caritas.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/sulteng.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Image.asset(
                  'assets/duithape.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
          ),
          const Spacer(),
          const FooterWidget(),
        ],
      ),
    );
  }
}
