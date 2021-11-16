class SnowTree {
  PVector start;
  PVector end;

  SnowTree(PVector a, PVector b) {
    start = a.get();
    end=b.get();
  }

  void display() {
    stroke(255);
    strokeWeight(dist(start.x, start.y, end.x, end.y)/25);
    line(start.x, start.y, end.x, end.y);
  }

  PVector pointA() {
    return end.get();
  }

  PVector pointB() {
    PVector a=end.get();
    PVector ab=PVector.sub(end, start);
    ab.mult(5/12.0);
    ab.rotate(radians(-20));
    PVector b=a.add(ab);
    return b;
  }

  PVector pointC() {
    PVector a= end.get();
    PVector ac=PVector.sub(end, start);
    ac.mult(5/12.0);
    ac.rotate(radians(20));
    PVector c=a.add(ac);
    return c;
  }

  PVector pointD() {
    PVector a= end.get();
    PVector ad=PVector.sub(end, start);
    ad.mult(5/12.0);
    ad.rotate(radians(-80));
    PVector d=a.add(ad);
    return d;
  }

  PVector pointE() {
    PVector a= end.get();
    PVector ae=PVector.sub(end, start);
    ae.mult(5/12.0);
    ae.rotate(radians(80));
    PVector e=a.add(ae);
    return e;
  }

  PVector pointF() {
    PVector a= end.get();
    PVector af=PVector.sub(end, start);
    af.mult(5/12.0);
    af.rotate(radians(-140));
    PVector e=a.add(af);
    return e;
  }
  
  PVector pointG() {
    PVector a= end.get();
    PVector ag=PVector.sub(end, start);
    ag.mult(5/12.0);
    ag.rotate(radians(140));
    PVector g=a.add(ag);
    return g;
  }
}
