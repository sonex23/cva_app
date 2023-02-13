import 'package:cva_app/common/theme.dart';
import 'package:cva_app/features/home/content_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ContentCubit>().getContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Halo,\nSahabat Peduli',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Image.asset(
                          'assets/notification.png',
                          width: 24,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      height: 72,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                context,
                                '/partner-screen',
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    'PARTNER',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, '/acommodation-screen'),
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: Border(
                                  left: BorderSide(
                                    color: Colors.white,
                                  ),
                                  right: BorderSide(
                                    color: Colors.white,
                                  ),
                                )),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'TOTAL BANTUAN',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '6,374 M',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                  color: Colors.white,
                                ),
                                right: BorderSide(
                                  color: Colors.white,
                                ),
                              )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'PENERIMA MANFAAT',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '17.049',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.only(bottom: 22),
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'F i t u r',
                      style: orangeTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/menu_cva.png',
                                width: 96,
                              ),
                              Text(
                                'CVA',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/menu_mekanisme.png',
                                width: 96,
                              ),
                              Text(
                                'MEKANISME',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/menu_tool.png',
                                width: 96,
                              ),
                              Text(
                                'TOOLS',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/menu_meal.png',
                                width: 96,
                              ),
                              Text(
                                'MEAL',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/menu_fsp.png',
                                width: 96,
                              ),
                              Text(
                                'FSP',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/menu_sop.png',
                                width: 96,
                              ),
                              Text(
                                'SOP',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Praktik Baik',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              BlocConsumer<ContentCubit, ContentState>(
                builder: (context, state) {
                  if (state.isLoadedState) {
                    return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.listContent?.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGreyColor,
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                    state.listContent?[index].img ?? ''),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  state.listContent?[index].title ?? '',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  } else {
                    return SizedBox();
                  }
                },
                listener: (context, state) {},
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
