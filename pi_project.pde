String[] pilines;
String pidigits;
long numdigits;
String bday;
String inputstring = "";
String us[];
String uk[];
void setup() {
  size(200, 200);
  noLoop();
  pilines = loadStrings("pi-tenmillion.txt");
  pidigits = pilines[0];
  MyPI.setPI(pidigits);
  numdigits = pidigits.length();
}
void findPI(String bday) {
  us = MyPI.getSubs(bday);
  for (String q : us) {
  }
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring (0, 2)+"/" + bday.substring (6);
  uk = MyPI.getSubs(bday_uk);
  for (String q : uk) {
  }
  for (int i = 0; i < us.length; i++) {
    MyPI.findinPI(us[i]);
  }
  for (int i = 0; i < uk.length; i++) {
    MyPI.findinPI(uk[i]);
  }
}
void draw() {
}
void keyTyped() {
  inputstring += key;
  println(inputstring);
}
void keyReleased() {
  if (key == '#') {
    inputstring = inputstring.replace("#", "");
    println("final"+inputstring);
    findPI(inputstring);
  }
}
