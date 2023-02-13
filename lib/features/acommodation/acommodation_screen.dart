import 'package:cva_app/common/theme.dart';
import 'package:cva_app/widget/footer_widget.dart';
import 'package:flutter/material.dart';

class AcommodationScreen extends StatefulWidget {
  const AcommodationScreen({Key? key}) : super(key: key);

  @override
  State<AcommodationScreen> createState() => _AcommodationScreenState();
}

class _AcommodationScreenState extends State<AcommodationScreen> {
  double? _heightSection1 = 0;
  double? _heightSection2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Total Bantuan',
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
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (_heightSection1 == 0) {
                                  setState(() {
                                    _heightSection1 = null;
                                  });
                                } else {
                                  setState(() {
                                    _heightSection1 = 0;
                                  });
                                }
                              },
                              child: Container(
                                color: kGreyColor,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 20),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon_arrow_down.png',
                                      width: 24,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'Bantuan Bersyarat',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              height: _heightSection1,
                              duration: const Duration(
                                milliseconds: 300,
                              ),
                              child: Column(
                                children: [
                                  _buildSection(
                                    title: 'Cash For Work',
                                    totalPeople:
                                        '910 Orang (Desa Omu, Salua, Bolapapu)',
                                    totalAcommodation: 'Rp1,437,880,000',
                                    img:
                                        'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/bantuan1.png?alt=media&token=b1e34770-48c0-4278-9d29-b18af5a471d4',
                                    desc:
                                        'Short-term income generation for earthquake-affected families in Central Sulawesi through a cash-for-work programme',
                                  ),
                                  _buildSection(
                                    title: 'Cash For Work Sector Livelihood',
                                    desc:
                                        'Supporting Earthquake-affected Families in Central Sulawesi in Restoring Their WASH in Infrastructure and Livelihoods and Strengthening their Disaster Preparedness',
                                    img:
                                        'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/bantuan2.png?alt=media&token=96d87985-6414-4e8b-844e-b95b3e0aa9b0',
                                    totalAcommodation: 'Rp841,040,000',
                                    totalPeople:
                                        '535 orang (Desa Jono, Sambo, Wisolo & Baluase)',
                                  ),
                                  _buildSection(
                                    title: 'Cash Grant sector Livelihood',
                                    desc:
                                        'Supporting Earthquake-affected Families in Central Sulawesi in Restoring Their WASH in Infrastructure and Livelihoods and Strengthening their Disaster Preparedness',
                                    img:
                                        'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/bantuan3.png?alt=media&token=c4398c7c-7807-4d62-b66a-e0de8b1f052f',
                                    totalAcommodation: 'Rp1,765,698,000',
                                    totalPeople:
                                        '535 orang (Desa Jono, Sambo, Wisolo & Baluase)',
                                  ),
                                  _buildSection(
                                    title:
                                        'Cash Grant Sector Mitigasi Pengurangan Risiko Bencara',
                                    desc:
                                        ' Strengthening Disaster Risk Resilience in Sigi Central Sulawesi',
                                    img:
                                        'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/bantuan4.png?alt=media&token=ba3935b8-bc35-46ca-b3fa-36997d742b6b',
                                    totalAcommodation: 'Rp2,039,852,800',
                                    totalPeople:
                                        '12 Desa vdi kecamatan Dolo Barat\n12 Desa di Kecamatan Dolo Selatan',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (_heightSection2 == 0) {
                                  setState(() {
                                    _heightSection2 = null;
                                  });
                                } else {
                                  setState(() {
                                    _heightSection2 = 0;
                                  });
                                }
                              },
                              child: Container(
                                color: kGreyColor,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 20),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon_arrow_down.png',
                                      width: 24,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'Bantuan Tidak Bersyarat',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              height: _heightSection2,
                              duration: const Duration(
                                milliseconds: 300,
                              ),
                              child: Column(
                                children: [
                                  _buildSection(
                                    title: 'Vurnerable',
                                    totalPeople:
                                        '157 Penerima manfaat (Desa Omu, Salua, Bolapapu)',
                                    totalAcommodation: 'Rp251,200,000',
                                    img:
                                        'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/bantuan5.png?alt=media&token=75a95fa7-1ba2-4060-a87c-a2b6c5054d08',
                                    desc:
                                        'Short-term income generation for earthquake-affected families in Central Sulawesi through a cash-for-work programme',
                                  ),
                                  _buildSection(
                                    title:
                                        'Cash Pilot Bantuan Tunai Multi Guna Melalui Wesel Pos',
                                    desc:
                                        'Readiness To Respond (R2R) Program - Capacity Stengthening for Cash Readiness in Emergency',
                                    img:
                                        'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/bantuan6.png?alt=media&token=ab8186ab-2351-4c07-b0fe-fb94579ace2d',
                                    totalAcommodation: 'Rp38,500,000',
                                    totalPeople: '55 orang di Desa Paluhmanan',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const FooterWidget(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Column _buildSection({
    required String title,
    required String desc,
    required String img,
    required String totalAcommodation,
    required String totalPeople,
  }) {
    return Column(
      children: [
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: Image.network(
            img,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: blackTextStyle.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            desc,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          totalAcommodation,
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            totalPeople,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
