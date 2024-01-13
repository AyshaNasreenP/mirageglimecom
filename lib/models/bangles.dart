class bangles
{
  String? image;
  String? description;
  String? price;


  bangles(this.image,this.description,this.price);
}

List Banglescolletions = banglescolletions.map((ba) => bangles(ba["image"], ba["description"],ba["price"])).toList();

var banglescolletions = [
  {"image":"assets/image.png","description":"Rectangle pendent","price":"₹199"},
  {"image":"assets/Bracelet.png","description":"Square pendent","price":"₹89"},
  {"image":"assets/bangles.png","description":"Circle pendent","price":"₹99"},
  {"image":"assets/ring.png","description":"heart pendent","price":"₹259"},
  {"image":"assets/earring.png","description":"Roman pendent","price":"₹350"},
  {"image":"assets/clip.png","description":"Small pendent","price":"₹399"},
  {"image":"assets/image.png","description":"Rectangle pendent","price":"₹199"},
  {"image":"assets/Bracelet.png","description":"Square pendent","price":"₹89"},
  {"image":"assets/bangles.png","description":"Circle pendent","price":"₹99"},
  {"image":"assets/ring.png","description":"heart pendent","price":"₹259"},
  {"image":"assets/earring.png","description":"Roman pendent","price":"₹350"},
  {"image":"assets/clip.png","description":"Small pendent","price":"₹399"},

];
