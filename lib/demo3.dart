void main(){
  Future f1=new Future(()=>null);
  Future f2=new Future(()=>null);
  Future f3=new Future(()=>null);
  f2.then((_) {
    print("f2 -> f2");
    f1.then((_) => print("f2.then -> f1"));
  });
  f1.then((_) => print("f1 -> f1"));
  f3.then((_) => print("f3 -> f3"));
}