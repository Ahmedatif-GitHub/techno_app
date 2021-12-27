class OnBoardingModel {
  final String title;
  final String image;

  OnBoardingModel({
    required this.title,
    required this.image,
  });
}

List<OnBoardingModel> onboardingContents = [
  OnBoardingModel(
    title: 'زود مبيعاتك',
    image: 'assets/images/1.png',
  ),
  OnBoardingModel(
    title: 'عنوان2',
    image: 'assets/images/2.png',
  ),
  OnBoardingModel(
    title: 'عنوان3',
    image: 'assets/images/3.png',
  ),
];
