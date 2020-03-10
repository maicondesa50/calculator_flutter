class Memory {
  String result = "0";

  void appltComand(String label){
    if(label == "AC")
    _clear();
    else
    result += label;
  }
  
  _clear(){
    result = "0";
  }
}