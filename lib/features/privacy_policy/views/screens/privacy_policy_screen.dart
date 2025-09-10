import 'package:ecommerce_app/features/privacy_policy/views/widgets/info_section.dart';
import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Privacy Police',
          style: AppTextStyles.withColor(
            AppTextStyles.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection(
                title: 'Information We Collect',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'How We Use Your Information',
                content:
                    'We use the information we collect to provide, maintain, and improve our services, process your transcations, and send you updates.',
              ),
              InfoSection(
                title: 'Information Sharing',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'Data Security',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'Your Rights',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'Cookie Policy',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              SizedBox(height: 24),
              Text(
                'Last Updated: March 2024',
                style: AppTextStyles.withColor(
                  AppTextStyles.bodySmall,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
