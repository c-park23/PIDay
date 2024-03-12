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
  //pidigits = pilines[0].substring(0, 1)+pilines[0].substring(2);
  pidigits = pilines[0];
  MyPI.setPI(pidigits);
  numdigits = pidigits.length();
  //println(MyPI.getPI().substring((int)numdigits-50));
}
void findPI(String bday) {
  us = MyPI.getSubs(bday);
  for (String q : us) {
    //println(q+" "+q.length());
  }
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring (0, 2)+"/" + bday.substring (6);
  uk = MyPI.getSubs(bday_uk);
  for (String q : uk) {
    //println(q+" "+q.length());
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
