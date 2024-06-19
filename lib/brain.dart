import 'ques.dart';

class Brain {
  int _quesNum = 0;

  final List<Ques> _quesBank = [
    Ques('You can lead a cow down stairs but not up stairs.', false),
    Ques('Approximately one quarter of human bones are in the feet.', true),
    Ques('A slug\'s blood is green.', true),
    Ques('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
    Ques('It is illegal to pee in the Ocean in Portugal.', true),
    Ques(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Ques(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Ques(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Ques(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Ques('Google was originally called "Backrub".', true),
    Ques(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Ques(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQues() {
    if (_quesNum < _quesBank.length - 1) {
      _quesNum++;
    }
  }

  String getQuesText() {
    return _quesBank[_quesNum].quesText;
  }

  bool getQuesAns() {
    return _quesBank[_quesNum].quesAns;
  }

  bool isFinished(){
    if(_quesNum>=_quesBank.length-1){
      return true;
    }else{
      return false;
    }
  }

  void reset() {
    _quesNum = 0;
  }

}
