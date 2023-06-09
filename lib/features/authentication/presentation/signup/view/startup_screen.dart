part of '../signup.dart';

class StartUpScreen extends ConsumerStatefulWidget {
  const StartUpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends ConsumerState<StartUpScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    controller.repeat(reverse: true);
    controller.reverseDuration = const Duration(milliseconds: 1000);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalMargin(70),
          Center(
            child: SvgPicture.asset(
              AppIcons.logo,
            ),
          ),
          const VerticalMargin(60),
          // Bouncing Animation
          AnimatedBuilder(
              animation: controller,
              child: Image.asset(
                AppImages.bank,
                height: 300,
                width: 250,
                fit: BoxFit.cover,
              ),
              builder: (context, child) {
                // Animate up and down
                return Transform.translate(
                  offset: Offset(0, 25 * controller.value),
                  child: child,
                );
              }),

          const VerticalMargin(60),
          AppButton(
            text: AppTexts.createAccountButton,
            onTap: () {},
            textColor: AppColors.white100,
            color: AppColors.primaryColor,
          ),
          AppButton(
            text: AppTexts.accountLogin,
            onTap: () {},
            textColor: AppColors.primaryColor,
            borderColor: AppColors.primaryColor,
          ),
          const VerticalMargin(20),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "${AppTexts.termsAndConditions}\n",
              style: Config.b1(context).copyWith(
                color: AppColors.grey100,
              ),
              children: [
                TextSpan(
                  text: AppTexts.termsAndConditionsLink,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      debugPrint("Terms and Conditions");
                    },
                  style: Config.b1(context).copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
