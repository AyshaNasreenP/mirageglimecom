

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}

List lis = modelData.map((a) => Model(a["image"], a["text"])).toList();

var modelData = [
  {"image":"assets/image.png","text":"Chains"},
  {"image":"assets/Bracelet.png","text":"Bracelet"},
  {"image":"assets/bangles.png","text":"Bangles"},
  {"image":"assets/ring.png","text":"Ring"},
  {"image":"assets/earring.png","text":"Ear Ring"},
  {"image":"assets/clip.png","text":"Clips"},

];


///

class Image{
  String ? image;

  Image(this.image);
}

List sale =saleimage.map((b) => Image (b["image"])).toList();

var saleimage=[
  {"image":"assets/image.png"},
  {"image":"assets/Bracelet.png"},
  {"image":"assets/bangles.png"},
  {"image":"assets/ring.png"},
  {"image":"assets/earring.png"},
  {"image":"assets/clip.png"}


];

///

class New{
  String? image;
  String? text;

  New(this.image,this.text);

}

List NewCollection=newcollection.map((c) =>New(c["image"],c["text"])).toList();

var newcollection=[
  {"image":"assets/image.png","text":"Chains"},
  {"image":"assets/Bracelet.png","text":"Bracelet"},
  {"image":"assets/bangles.png","text":"Bangles"},
  {"image":"assets/ring.png","text":"Ring"},
];