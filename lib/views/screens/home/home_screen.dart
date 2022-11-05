import 'package:advertiser/advertiser.dart';
import 'package:advertiser/views/styles/app_bar_styles.dart';
import 'package:advertiser/views/styles/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String platformText = '';
  bool isFinished = false;
  int currentIndex = 0;

  @override
  void initState() {
    setState(() {
      _getValueFromPlatfromChannel(0);
    });
    super.initState();
  }

  void _onStepContinueClicked() {
    setState(() {
      currentIndex < 2 ? currentIndex += 1 : null;
      _getValueFromPlatfromChannel(currentIndex);
    });
  }

  void _onStepCancelClicked() {
    setState(() {
      currentIndex > 0 ? currentIndex -= 1 : null;
      _getValueFromPlatfromChannel(currentIndex);
    });
  }

  void _getValueFromPlatfromChannel(int index) async {
    try {
      const methodChannel = MethodChannel(methodChannelKey);
      var value = await methodChannel
          .invokeMethod('getTextForAdvertiser', {"advertiseIndex": "$index"});
      debugPrint('Value $value');
      setState(() {
        platformText = '$value';
      });
    } catch (e) {
      debugPrint('Error Occured With : $e');
    }
  }


  void _onFinishedClicked() {
    setState(() {
      isFinished = true;
    });
  }

  void _resetStepper() {
    setState(() {
      isFinished = false;
      currentIndex = 0;
      _getValueFromPlatfromChannel(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBarStyles.white,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            headerWidget(),
            isFinished
                ? FinishedWidget(
                    onResetClicked: _resetStepper,
                  )
                : Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => CustomStep(
                            label: stepperTitles[index],
                            content: platformText,
                            index: index,
                            currentStep: currentIndex,
                            onFinishedClicked: _onFinishedClicked,
                            onStepCancelClicked: _onStepCancelClicked,
                            onStepContinueClicked: _onStepContinueClicked,
                          ),
                          itemCount: 3,
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget headerWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Welcome to!',
          style: AppTextStyles.paragraph2,
        ),
        Text(
          'Advertiser',
          style: AppTextStyles.title1,
        ),
      ],
    );
  }
}
