part of '../_home.dart';

class SuccessScreen extends ConsumerStatefulWidget {
  final String? campaignHash;
  const SuccessScreen({this.campaignHash, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends ConsumerState<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalMargin(10),
              _removeButton(),
              Spacer(),
              _buildSuccessIcon(),
              VerticalMargin(40),
              _buildSuccessText(),
              Spacer(),
              _buildSuccessButton(),
            ],
          ),
        ),
      ),
    );
  }

  _removeButton() {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          context.goNamed(RouteConstants.home);
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.white200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.close,
            color: AppColors.grey300,
          ),
        ),
      ),
    );
  }

  _buildSuccessButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AppButton(
        text: AppTexts.continueText,
        onTap: () {
          context.goNamed(RouteConstants.home);
        },
        textColor: AppColors.white200,
        color: AppColors.primaryColor,
        isRounded: false,
      ),
    );
  }

  _buildSuccessIcon() {
    return Align(
      alignment: Alignment.center,
      child: Lottie.asset(
        AppJsons.success,
        width: 200,
        height: 200,
        reverse: false,
        repeat: false,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildSuccessText() {
    return Column(
      children: [
        Text(
          AppTexts.success,
          style: Config.h3(context).copyWith(
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        VerticalMargin(10),
        //  Widget for the success message
        Text(
          "Your donation was successful \nThank you for your support!",
          textAlign: TextAlign.center,
          style: Config.h3(context).copyWith(
            color: AppColors.grey100,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
