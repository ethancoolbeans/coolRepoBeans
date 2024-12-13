ListArray la;

void setup()
{
  la = new ListArray();
  populate(la, 10, true);

  println(la);

  int i = la.indexOf('C');
  int j = la.indexOf('?');
  println( "index of c: " + i + " " + la.get(i) );
  println( "index of ?: " + j + " " + la.get(j) );
}//setup


void populate(ListArray s, int count, boolean ordered)
{
  for (int i=0; i < count; i++) {
    char c = char('A' + i);
    if (!ordered) {
      c = char(int(random(26)) + 'A');
    }
    s.add(c);
  }//loop
}//populate
