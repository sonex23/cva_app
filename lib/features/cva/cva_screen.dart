import 'package:cva_app/common/theme.dart';
import 'package:cva_app/widget/custom_textfield.dart';
import 'package:cva_app/widget/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CvaScreen extends StatefulWidget {
  const CvaScreen({Key? key}) : super(key: key);

  @override
  State<CvaScreen> createState() => _CvaScreenState();
}

class _CvaScreenState extends State<CvaScreen> {
  final _url = Uri(
    scheme: 'https',
    host: 'docs.google.com',
    path: '/presentation/d/14noKIHV0R06VgEZ55bq_iYQOm_3qFHv7',
  );
  Future<void> _openDocument() async {
    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            'Cash Voucher Assistance',
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
              Column(
                children: [
                  ExpandedContentWidget(
                    title: 'Yayasan Pusaka Indonesia',
                    color: const Color(0xff68E1FD),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          'assets/logo_pusaka.png',
                          width: 88,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'YPI merupakan mitra CRS dalam program Bantuan Tunai dan Kupon atau Cash Voucher Assistance (CVA) Readiness to Respon (R2R). Sebagai upaya peningkatan kesiapsiagaan dan kapasitas lembaga pada situasi kedaruratan dalam memberikan bantuan langsung kepada masyarakat terdampak menjadi lebih baik',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Apa itu CVA?',
                    color: Color.fromARGB(255, 74, 221, 45),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          'assets/logo.png',
                          width: 88,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'CVA mengacu pada semua program di mana transfer tunai atau voucher barang atau jasa diberikan langsung kepada penerima. Dalam konteks bantuan kemanusiaan, istilah tersebut digunakan untuk merujuk pada pemberian bantuan tunai atau voucher yang diberikan kepada individu, rumah tangga atau masyarakat penerima (Sumber: CaLP Glossary of Terminology for Cash and Voucher Assistance 2018).\nCVA adalah salah satu metode penyampaian bantuan yang paling efektif dan hemat biaya.',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Saluran Bantuan Kemanusiaan',
                    color: Color.fromARGB(255, 255, 177, 60),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Berikut beberapa cara menyalurkan/mentransfer bantuan kemanusiaan:',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/cva1.png?alt=media&token=247f3677-e1c4-4634-a50c-5025f29ac1fd',
                          width: 246,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Bantuan berupa barang',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/cva2.png?alt=media&token=ba395ced-74ce-4f6a-96c3-57677c9e3360',
                          width: 246,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Bantuan berupa uang tunai',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/cva3.png?alt=media&token=6dff69df-9c13-43ac-ad21-a31490e621e0',
                          width: 246,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Bantuan berupa voucher',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Terminologi Bantuan Tunai',
                    color: const Color.fromARGB(255, 158, 141, 245),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'CVA',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Cash and Voucher Assistance\n(Bantuan Tunai dan Voucher)',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'MEB',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Minimum Expenditure Basket\n(Keranjang Pengeluaran Minimum)',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'CFW',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Cash for Work\n(Program Padat Karya/Bantuan Tunai Karya)',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'FSP',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Financial Service Provider\n(Penyedia Jasa Keuangan)',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'MPCA',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Multi-Purpose Cash Assistance\n(Bantuan Tunai Serbaguna)',
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Kenapa harus CVA?',
                    color: const Color(0xffFFC9B0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 16),
                          child: Text(
                            '• Merupakan alternatif dari bantuan tradisional, bantuan barang.\n• Adalah solusi berbasis pasar.\n• Dapat membantu menjaga martabat penerima manfaat.\n• Juga dapat memberdayakan penerima manfaat.\n• Adalah salah satu metode penyampaian bantuan yang paling efektif dan hemat biaya.',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Bantuan Tunai',
                    color: const Color(0xffFAFF00),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Bantuan tunai merupakan modalitas transfer yang dapat digunakan sendiri-sendiri atau bersama-sama dengan modalitas lain untuk mencapai suatu tujuan tertentu. Bantuan tunai dan voucher dapat membantu menjaga martabat dan mendorong pemberdayaan penerima manfaat. Bantuan tunai dan voucher dapat memenuhi berbagai kebutuhan di berbagai sector. Bantuan tunai adalah solusi berbasis pasar dan dapat mendukung pedagang dan pemasok lokal serta individu, rumah tangga, dan masyarakat yang terkena dampak.',
                        textAlign: TextAlign.justify,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Hibah / transfer multiguna',
                    color: const Color(0xff05FF00),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Digunakan untuk menggambarkan tujuan pemenuhan beberapa kebutuhan rumah tangga melalui satu transfer. Transfer multiguna (baik reguler atau satu kali) sesuai dengan jumlah uang yang dibutuhkan rumah tangga untuk menutupi, seluruhnya atau sebagian, satu set kebutuhan dasar dan/atau pemulihan. Bantuan tunai multiguna selalu tidak berbatas.',
                        textAlign: TextAlign.justify,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Spesifik Sektor',
                    color: const Color(0xff05FF00),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Digunakan untuk menggambarkan tujuan yang dirancang untuk mencapai tujuan pada satu sektor spesifik. (misalnya, WASH, Shelter atau Ketahanan Pangan). Bantuan tunai khusus sektor dapat dibatasi atau tidak dibatasi (pemanfaatan bantuan) dan/atau bersyarat atau tidak bersyarat (persyaratan pra-kualifikasi) sesuai kebutuhan untuk mencapai tujuan sector spesifik.',
                        textAlign: TextAlign.justify,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Bersyarat',
                    color: const Color(0xff00F0FF),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Kondisi mengacu pada kegiatan atau kewajiban sebagai prasyarat yang harus dipenuhi oleh penerima untuk menerima bantuan. Kondisi pada prinsipnya dapat digunakan dengan segala jenis transfer (tunai, voucher, barang, pengiriman layanan) tergantung pada desain dan tujuan intervensi. Beberapa intervensi mungkin mengharuskan penerima untuk mencapai hasil yang disepakati sebagai syarat untuk menerima tahap berikutnya.',
                        textAlign: TextAlign.justify,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Tak Bersyarat',
                    color: const Color(0xff00F0FF),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Transfer tanpa syarat diberikan tanpa penerima harus melakukan apa pun untuk menerima bantuan, selain memenuhi kriteria penargetan intervensi (penargetan terpisah dari persyaratan).',
                        textAlign: TextAlign.justify,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'CVA dalam siklus program',
                    color: Color.fromARGB(255, 84, 152, 255),
                    child: Column(
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/cva4.png?alt=media&token=4d0356d9-2f6d-4127-9914-1fb6d5ee1d01',
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Transfer tanpa syarat diberikan tanpa penerima harus melakukan apa pun untuk menerima bantuan, selain memenuhi kriteria penargetan intervensi (penargetan terpisah dari persyaratan).',
                            textAlign: TextAlign.justify,
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExpandedContentWidget(
                    title: 'Pasar Penting dalam Keadaan Darurat',
                    color: Color.fromARGB(255, 84, 152, 255),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/cvaapplication.appspot.com/o/cva5.png?alt=media&token=8b49496b-55b4-405e-917b-e0d77197557d',
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Memastikan kelangsungan hidup :',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '• Menyediakan barang atau jasa penting untuk memenuhi kebutuhan dasar',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Melindungi mata pencaharian :',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '• Menyediakan peralatan, input dan layanan pertanian, atau mengganti aset mata pencaharian lainnya\n• Menyediakan pekerjaan dan peluang untuk tenaga kerja upahan, atau menghubungkan dengan pembeli untuk produk mereka',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: _openDocument,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 6,
                  ),
                  child: Text(
                    'Unduh Materi CVA',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Isi data sebelum unduh materi',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                ),
                child: CustomTextField(
                  onTapSubmit: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const FooterWidget(),
            ],
          ),
        ));
  }
}

class ExpandedContentWidget extends StatefulWidget {
  final String title;
  final Widget child;
  final Color color;
  ExpandedContentWidget({
    Key? key,
    required this.title,
    required this.child,
    required this.color,
  }) : super(key: key);

  @override
  State<ExpandedContentWidget> createState() => _ExpandedContentWidgetState();
}

class _ExpandedContentWidgetState extends State<ExpandedContentWidget> {
  double? _height = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (_height == 0) {
              setState(() {
                _height = null;
              });
            } else {
              setState(() {
                _height = 0;
              });
            }
          },
          child: Container(
            color: widget.color,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_arrow_down.png',
                  width: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    widget.title,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          height: _height,
          duration: const Duration(
            milliseconds: 300,
          ),
          child: widget.child,
        ),
        const SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
