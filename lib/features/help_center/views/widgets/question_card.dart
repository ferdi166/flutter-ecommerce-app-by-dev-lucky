import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const QuestionCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.2)
                : Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(
          title,
          style: AppTextStyles.withColor(
            AppTextStyles.bodyMedium,
            Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: isDark ? Colors.grey[400] : Colors.grey[600],
          size: 16,
        ),
        onTap: () => _showAnswerBottomSheet(context, title, isDark),
      ),
    );
  }

  void _showAnswerBottomSheet(
    BuildContext context,
    String question,
    bool isDark,
  ) {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    question,
                    style: AppTextStyles.withColor(
                      AppTextStyles.h3,
                      Theme.of(context).textTheme.bodyLarge!.color!,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.close,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              _getAnswer(question),
              style: AppTextStyles.withColor(
                AppTextStyles.bodyMedium,
                isDark ? Colors.grey[400]! : Colors.grey[600]!,
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Got It',
                  style: AppTextStyles.withColor(
                    AppTextStyles.buttonMedium,
                    Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  String _getAnswer(String question) {
    final answers = {
      'How to track my order?':
          'To track your order:\n\n'
          '1. Go to "My Orders" in your account\n'
          '2. Select the order you want to track\n'
          '3. Click on "Track Order"\n'
          '4. You\'ll see real time updates about your package location\n\n'
          'You can also click on the tracking number in your order confirmation email to track your package directly.',
      'How to return an item?':
          'To return an item:\n\n'
          '1. Go to "My Orders" in your account\n'
          '2. Select the order with the item you want to return\n'
          '3. Click on "Return Item"\n'
          '4. Select the reason for return\n'
          '5. Print the return label\n'
          '6. Pack the item securely\n'
          '7. Drop off package at the nearest shipping location\n'
          'Returns must be initiated within 30 days of delivery. Once we receive the item, your refund will be processed within 5-7 bussiness days',
    };

    return answers[question] ??
        'Information not available. Please contact support for assistance';
  }
}
