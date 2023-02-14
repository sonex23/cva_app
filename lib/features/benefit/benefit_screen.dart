import 'package:cva_app/common/theme.dart';
import 'package:cva_app/widget/footer_widget.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class BenefitScreen extends StatefulWidget {
  const BenefitScreen({Key? key}) : super(key: key);

  @override
  State<BenefitScreen> createState() => _BenefitScreenState();
}

class _BenefitScreenState extends State<BenefitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Penerima Manfaat',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              'assets/table_manfaat.png',
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Provinsi',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: DChartPie(
                    data: const [
                      {'domain': 'Sumatera Utara', 'measure': 67},
                      {'domain': 'Sulawesi Tengah', 'measure': 22},
                      {'domain': 'Bekasi', 'measure': 11},
                    ],
                    fillColor: (pieData, index) {
                      switch (pieData['domain']) {
                        case 'Sumatera Utara':
                          return Colors.red.shade500;
                        case 'Sulawesi Tengah':
                          return Colors.lightGreen.shade300;
                        case 'Bekasi':
                          return Colors.blue.shade300;
                        default:
                          return Colors.purple.shade900;
                      }
                    },
                    pieLabel: (pieData, index) {
                      return "${pieData['measure']}%";
                    },
                    labelPosition: PieLabelPosition.inside,
                    labelColor: kBlackColor,
                    labelFontSize: 14,
                    labelLineColor: Colors.grey,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.red.shade800,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sumatera Utara',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.lightGreen.shade600,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sulawesi Tengah',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.blue.shade600,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Bekasi',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
              ),
            ),
            Text(
              'Kabupaten / Kota',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: DChartPie(
                    data: const [
                      {'domain': 'Medan', 'measure': 6},
                      {'domain': 'Deli Serdang', 'measure': 23},
                      {'domain': 'Binjai', 'measure': 18},
                      {'domain': 'Langkat', 'measure': 6},
                      {'domain': 'Kisaran', 'measure': 6},
                      {'domain': 'Sigi', 'measure': 29},
                      {'domain': 'Donggala', 'measure': 12},
                    ],
                    fillColor: (pieData, index) {
                      switch (pieData['domain']) {
                        case 'Medan':
                          return Colors.red.shade500;
                        case 'Deli Serdang':
                          return Colors.lightGreen.shade300;
                        case 'Binjai':
                          return Colors.blue.shade300;
                        case 'Langkat':
                          return Colors.orange.shade500;
                        case 'Kisaran':
                          return Colors.blue.shade600;
                        case 'Sigi':
                          return Colors.deepOrange.shade400;
                        case 'Donggala':
                          return Colors.brown.shade300;
                        default:
                          return Colors.purple.shade900;
                      }
                    },
                    pieLabel: (pieData, index) {
                      return "${pieData['measure']}%";
                    },
                    labelPosition: PieLabelPosition.auto,
                    labelColor: kBlackColor,
                    labelFontSize: 14,
                    labelLineColor: Colors.grey,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.red.shade500,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Medan',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.lightGreen.shade300,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Deli Serdang',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.blue.shade300,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Binjai',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.orange.shade500,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Langkat',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.blue.shade600,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Kisaran',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.deepOrange.shade400,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sigi',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.brown.shade300,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Donggala',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
              ),
            ),
            Text(
              'Kecamatan / Kelurahan',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: DChartPie(
                data: const [
                  {'domain': 'Patumbak', 'measure': 2},
                  {'domain': 'Namorambe', 'measure': 9},
                  {'domain': 'Kutalimbaru', 'measure': 2},
                  {'domain': 'Deli Tua', 'measure': 2},
                  {'domain': 'Binjai Utara', 'measure': 2},
                  {'domain': 'Hamparan Perak', 'measure': 4},
                  {'domain': 'Pangkalan Susu', 'measure': 2},
                  {'domain': 'Gumbasa', 'measure': 4},
                  {'domain': 'Kulawi', 'measure': 14},
                  {'domain': 'Dolo', 'measure': 5},
                  {'domain': 'Dolo Barat', 'measure': 21},
                  {'domain': 'Dolo Selatan', 'measure': 21},
                  {'domain': 'Banawa', 'measure': 12},
                ],
                fillColor: (pieData, index) {
                  switch (pieData['domain']) {
                    case 'Patumbak':
                      return Colors.red.shade500;
                    case 'Namorambe':
                      return Colors.lightGreen.shade300;
                    case 'Kutalimbaru':
                      return Colors.blue.shade300;
                    case 'Deli Tua':
                      return Colors.orange.shade500;
                    case 'Binjai Utara':
                      return Colors.blue.shade600;
                    case 'Hamparan Perak':
                      return Colors.deepOrange.shade400;
                    case 'Pangkalan Susu':
                      return Colors.brown.shade300;
                    case 'Gumbasa':
                      return Color.fromARGB(255, 136, 168, 6);
                    case 'Kulawi':
                      return Color.fromARGB(255, 9, 162, 201);
                    case 'Dolo':
                      return Color.fromARGB(255, 187, 105, 11);
                    case 'Dolo Barat':
                      return Color.fromARGB(255, 14, 98, 255);
                    case 'Dolo Selatan':
                      return Color.fromARGB(255, 187, 51, 17);
                    case 'Banawa':
                      return Color.fromARGB(255, 255, 78, 25);
                    default:
                      return Colors.purple.shade900;
                  }
                },
                pieLabel: (pieData, index) {
                  return "${pieData['measure']}%";
                },
                labelPosition: PieLabelPosition.auto,
                labelColor: kBlackColor,
                labelFontSize: 14,
                labelLineColor: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15),
              child: GridView.count(
                childAspectRatio: 7,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.red.shade500,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Patumbak',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.lightGreen.shade300,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Namarombe',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.blue.shade300,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Kutalimbaru',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.orange.shade500,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Deli Tua',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.blue.shade600,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Binjai Utara',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.deepOrange.shade400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Hamparan Perak',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.brown.shade300,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Pangkalan Susu',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.red.shade500,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Gumbasa',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.lightGreen.shade300,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Kulawi',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.blue.shade300,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Dolo',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.orange.shade500,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Dolo Barat',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.blue.shade600,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Dolo Selatan',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.deepOrange.shade400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Banawa',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
