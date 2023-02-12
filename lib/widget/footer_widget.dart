import 'package:cva_app/common/theme.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8,
      ),
      color: Color(0xffd9d9d9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_globe.png',
                    width: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'www.pusakaindonesia.or.id',
                    style: blackTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icon_mail.png',
                    width: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ypi@pusakaindonesia.or.id',
                        style: blackTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'pusakaindonesia.ypi@gmail.com',
                        style: blackTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icon_phone.png',
                    width: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(061) 8223252 / +62 813 9619 2477',
                    style: blackTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
          Image.asset(
            'assets/logo_pusaka.png',
            width: 60,
          )
        ],
      ),
    );
  }
}
