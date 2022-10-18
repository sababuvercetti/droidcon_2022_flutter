import 'package:droidcon_app/assets/images.dart';
import 'package:droidcon_app/user_interfaces/colors/colors.dart';
import 'package:droidcon_app/user_interfaces/dashboard/home/widgets/organizers_card.dart';
import 'package:droidcon_app/user_interfaces/dashboard/home/widgets/sponsors_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    isDark
                        ? AssetImages.droidconLogoWhite
                        : AssetImages.droidconLogo,
                    scale: 2,
                  ),
                  Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.tealColor),
                      child: const ImageIcon(
                        AssetImage(
                          AssetImages.lockIcon,
                        ),
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Welcome to the largest Focused Android Developer community in Africa',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : AppColors.blackColor,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    AssetImages.droidconBanner,
                  )),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.tealColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Image.asset(
                      AssetImages.cfsBanner,
                      width: 20.w,
                      height: 10.h,
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Call for Speakers',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17.sp),
                        ),
                        Text(
                          'Apply to be a speaker',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.blackColor,
                                  fontSize: 10.sp),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const ImageIcon(
                      AssetImage(AssetImages.playIcon),
                      color: Colors.white,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const SponsorsCard(),
              const SizedBox(
                height: 24,
              ),
              const OrganizersCard(),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}