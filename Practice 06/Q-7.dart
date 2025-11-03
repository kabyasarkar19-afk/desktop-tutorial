import 'dart:io';
class Question {
     String Que;
     List<String> option;
     int correct_ans;
     Question(this.Que ,this.option, this.correct_ans);
     bool check_ans(var user_ans) {
        if(user_ans == correct_ans) {
          return true;
        }
        else return false;
     }
}

class Quiz {
  List<Question> questions;
  int score = 0;
  Quiz(this.questions);
  
  void start() {
      int k = questions.length;
      print('Welcome to the Naruto Quiz! Dattebayo');
      for(int i = 0; i < k ;i++) {
          var objective = questions[i];
          print('Que No ${i+1} :- ${objective.Que}');
          int sz = objective.option.length;
          for(int j = 0; j <sz; j++) {
              print('${j+1} : ${objective.option[j]}');
          }
          print("Chose Your Answer :- ");
          int? ans = int.tryParse(stdin.readLineSync() ?? '');

          if(ans != null) {
              if(objective.check_ans(ans)){
                  print("Correct !");
                  score++;
              }
              else{
                  print("Wrong ! correct answer is ${objective.correct_ans} ${objective.option[(objective.correct_ans)-1]}");
              }
          }
      }
      print("YOUR SCORE IS  :- $score");
  }
  
}
void main() {
    print('--- This is a Quiz test . You will be given 10 Question. Each of these hold 1 points ---');
    var questions =[
      Question('Who is Naruto’s father?', 
        ['Kakashi Hatake', 'Minato Namikaze', 'Jiraiya', 'Itachi Uchiha'], 2),
      Question('What is the name of Naruto’s signature move?', 
        ['Chidori', 'Rasengan', 'Amaterasu', 'Shadow Clone Jutsu'], 2),
      Question('Which tailed beast is sealed inside Naruto?', 
        ['Kurama', 'Shukaku', 'Gyuki', 'Matatabi'], 1),
      Question('Who killed Itachi Uchiha?', 
        ['Naruto', 'Sasuke', 'Madara', 'Obito'], 2),
      Question('What is Kakashi’s nickname?', 
        ['Copy Ninja', 'Lightning Lord', 'Silent Killer', 'Sharingan Hero'], 1),
      Question('Who was the first Hokage?', 
        ['Tobirama Senju', 'Hashirama Senju', 'Hiruzen Sarutobi', 'Minato Namikaze'], 2),
      Question('What clan does Sasuke belong to?', 
        ['Hyuga', 'Uzumaki', 'Uchiha', 'Nara'], 3),
      Question('Who was Naruto’s first teacher at the academy?', 
        ['Iruka Umino', 'Kakashi Hatake', 'Asuma Sarutobi', 'Ebisu'], 1),
      Question('Who became the Sixth Hokage?', 
        ['Kakashi Hatake', 'Naruto Uzumaki', 'Tsunade', 'Sasuke Uchiha'], 1),
      Question('What is the name of Naruto’s mother?', 
        ['Mikoto', 'Kushina Uzumaki', 'Hinata Hyuga', 'Sakura Haruno'], 2),
    ];

    var quiz = Quiz(questions);
    quiz.start();
}
