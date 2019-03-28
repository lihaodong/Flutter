main() {
  var number = 12; //字面量
  printNumber(number);
  var add1 = makeAddr(2);
  var add2 = add1(3);
  print("number = $add2");
  var list = [1, 2, 3];
  list.forEach(printlist);
}
printlist(num name){
  print("========list $name");
}
printNumber(num number) {
//  可以双引号可以单引号
  print('this is number $number');
  print('number is  ${number.runtimeType}');
  assert(number == 12);
}
//number
int i = 12;
double d = 1.2;
num c = 12;
num d1 = 1.2;
//String
String s = "abc";
String s1 = 'abc';

sayHello(name) => 'name $name';

Function makeAddr(num addBy) {
  addBy++;
  return (num i) => addBy + i;
}
void goFor(){
  try{
    List<int> list=[1,2,3];
    for(var x in list){

    }
    list.forEach((i)=>print(i));

  }catch(ee){

  }


}

List list1=<int>[1,2,4];
var color=<String,String>{
  '1':'red',
  '2':'blue'
};



