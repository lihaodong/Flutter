class Point{
  num x;
  num y;
  Point(num x,num y){
    this.x=x;
    this.y=y;
  }
}
class Point1{
  num x;
  num y;
  Point1(this.x,this.y);
  Point1.formJson(Map map){//命名构造函数
    this.x=5;
  }
}

class X{
  void a(){
    print('x.a');
  }
}
class Z{
  void a(){
    print('z.a');
  }
}
class Y{
  void a(){
    print('y.a');
  }
}
class T extends X with Z,Y{

}
void main(){
  T t=new T();
  t.a();
}