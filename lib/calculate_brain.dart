import 'dart:math';

class CalculateBrain{

  CalculateBrain({required this.height,required this.weight});

  final int height;
  final int weight;

  double  _bmi =0;

  String getCalculation(){

    _bmi = weight/pow(height/100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResults(){

    if(_bmi>=25){
      return 'Over Weight';
    }
    else if(_bmi>=18)
    {
      return 'Normal Weight';
    }else{
      return 'Under Weight';
    }
  }

  String getConclution(){
    if(_bmi>=25){
      return 'Over Weight do more excerises';
    }
    else if(_bmi>=18)
    {
      return 'Noramal weight keep going!!!';
    }else{
      return 'Under Weight Eat helty food';
    }
  }
}