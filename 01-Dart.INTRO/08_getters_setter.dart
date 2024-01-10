void main(){
  
  final mySquare = Square(side : -10);
  

  
  print('area : ${mySquare.area}');
}

class Square{
  
  //double = tipo de dato decimanl 
  double _side; //side* side
  
  Square({required double side})
    
    //aserciones :assert
    //las aserciones son reglas que le colocas al construstor
    :assert(side >= 0, 'side must be >= 0'),
    _side = side;
  

  
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    print('Setting new value ${value}');
    if(value < 0 ) throw 'value most be > 0';
    
    _side = value;
  }
    double calculateArea(){
    return _side *_side;
  }
}
