public class MyPI {

  private static String PI;  // millions of digits of PI

  private static long NUMPI; // number of digits of PI




  public static String getPI() {
    return PI;
  }



  public static void setPI(String in_) {
    PI = new String(in_);
    NUMPI = in_.length();
  }


  public static long getNUMPI() {

    return NUMPI;
  }



  public static String [] getSubs(String s_) {
    s_ = s_.replace("/", "");
    String [] us = new String[s_.length()];
    for (int i = 0; i < s_.length(); i++) {
      us[i] = s_.substring(0, i+1);
    }
    return us;
  }



  public static String findinPI(String in_) {
    String out="";
    boolean found = false;
    for (int pos = 0; pos < NUMPI-1-in_.length(); pos++) {
      if (in_.equals(PI.substring(pos, pos + in_.length()))) {
        found = true;
        out = "Birthday String " + in_ + " found at position " + pos;
        break;
      } else {
        out = "Birthday String " + in_ + " not found";
      }
    }
    System.out.println(out);
    return out;
  }
}
