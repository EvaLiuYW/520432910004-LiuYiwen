class SnowTree {
  PVector start;
  PVector end;

  SnowTree(PVector a, PVector b) {
    start = a.get();
    end=b.get();
  }

  void display() {
    stroke(255);
    //strokeWeight(1);
    line(start.x, start.y, end.x, end.y);
  }

  PVector pointA() {
    return end.get();
  }

  PVector pointB() {
    PVector a=end.get();
    PVector ab=PVector.sub(end, start);
    ab.div(3);
    ab.rotate(radians(-30));
    PVector b=a.add(ab);
    return b;
  }

  PVector pointC() {
    PVector a= end.get();
    PVector ac=PVector.sub(end, start);
    ac.div(3);
    ac.rotate(radians(30));
    PVector c=a.add(ac);
    return c;
  }

  PVector pointD() {
    PVector a= end.get();
    PVector ad=PVector.sub(end, start);
    ad.div(3);
    ad.rotate(radians(-90));
    PVector d=a.add(ad);
    return d;
  }

  PVector pointE() {
    PVector a= end.get();
    PVector ae=PVector.sub(end, start);
    ae.div(3);
    ae.rotate(radians(90));
    PVector e=a.add(ae);
    return e;
  }

  PVector pointF() {
    PVector a= end.get();
    PVector af=PVector.sub(end, start);
    af.div(3);
    af.rotate(radians(-150));
    PVector e=a.add(af);
    return e;
  }
  
  PVector pointG() {
    PVector a= end.get();
    PVector ag=PVector.sub(end, start);
    ag.div(3);
    ag.rotate(radians(150));
    PVector g=a.add(ag);
    return g;
  }
}
