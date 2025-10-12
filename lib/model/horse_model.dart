class HorseModel {
  final String image;
  final String name;
  final String year;
  final String city;
  final String price;

  HorseModel({
    required this.image,
    required this.name,
    required this.year,
    required this.city,
    required this.price,
  });
}

final List<HorseModel> horseCard = [
  HorseModel(
    image: 'assets/images/h2.png',
    name: 'مهره',
    year: '1س 11ش ',
    city: 'الرياض',
    price: '3،700 ريال',
  ),
  HorseModel(
    image: 'assets/images/h3.png',
    name: 'فرس',
    year: '2س 11ش ',
    city: 'حائل',
    price: '3،500 ريال',
  ),
  HorseModel(
    image: 'assets/images/h4.png',
    name: 'حصان',
    year: '3س 11ش ',
    city: 'مكة',
    price: '7000 ريال',
  ),
  HorseModel(
    image: 'assets/images/h5.png',
    name: 'فرس',
    year: '4س 11ش ',
    city: 'الدمام',
    price: '5,000 ريال',
  ),
];
