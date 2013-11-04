import 'dart:math';

ex8_1() 
{
  print('Ex. 8.1');
  var subjects = ["He", "She", "He", "She", "He", "She"];
  var adverbs = ["endlessly", "Weirdly", "quickly", "randomly", "delicately", "delightfully"];
  var verbs = ["writes", "wears", "finishes", "generates", "eats", "lives"];
  var adjectives = ["meaningless","beautiful","awful","adoarable","gorgeous","wonderful"];
  var nouns = ["letters","dresses","jobs","sentences","fruits","life"];
  
  
  List<String> Sentences = new List<String>();

  var rng = new Random();
  for (var i = 0; i < 10; i++) 
  {
    int index0 = rng.nextInt(6);
    int index1 = rng.nextInt(6);
    int index2 = rng.nextInt(6);
    int index3 = rng.nextInt(6);
    int index4 = rng.nextInt(6);
   
    Sentences.add(subjects[index0] + " " + adverbs[index1] + " " + verbs[index2] + " " + adjectives[index3] + " " + nouns[index4]);
  }
    
  for (var sentence in Sentences)
    print('$sentence');
  
}

ex8_2(String c)
{
  print('Ex. 8.2');
  var associations =  [
                        {"name": "IS", "description": "Information Systems"},
                        {"name": "CS", "description": "Computer Science"},
                        {"name": "CSD", "description": "Canadian Society of Developers"},
                        {"name": "ASD", "description": "American Society of Developers"},
                        {"name": "DB", "description": "Database"},
                        {"name": "PM", "description": "Project Managers"},
                        {"name": "BA", "description": "Business Analysts"},
                      ];

  var members = [
                  {"associationName": "IS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
                  {"associationName": "CS", "firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"},
                  {"associationName": "IS", "firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"},
                  {"associationName": "CSD", "firstName": "Sandra", "lastName": "Osman", "email": "so@hotmail.com"},
                  {"associationName": "ASD", "firstName": "Demi", "lastName": "Papandro", "email": "dp@gmail.com"},
                  {"associationName": "DB", "firstName": "Paul", "lastName": "Zia", "email": "pz@gmail.com"},
                  {"associationName": "PM", "firstName": "Rhea", "lastName": "Magano", "email": "rm@gmail.com"},
                  {"associationName": "BA", "firstName": "Dina", "lastName": "Atwood", "email": "da@gmail.com"},
                ];
  
  members.sort((x,y)=>x["lastName"].compareTo(y["lastName"]));
  for (var member in members)
    print(member["lastName"]);
  
  List<Object> matches = new List<Object>();
      
  for (var member in members)
  {
      if (member["lastName"].startsWith(c))
      {
        matches.add(member); 
      }
  }
  
  print('\n');
  
  for (var member in matches)
    print(member["lastName"]);   
      

}

ex8_4()
{
  print('Ex. 8.4');
  List<List<int>> matrix = [
                            [0,1,1,1,0],
                            [1,0,1,0,1],
                            [1,0,1,0,0],
                            [1,0,1,0,1],
                            [1,0,1,0,0]
                           ];
  
  List<int> x = new List<int>();
  List<int> y = new List<int>();
  List<int> numberHorizontal1s = new List<int>();
  List<int> numberVertical1s = new List<int>();
  
  for (int i = 0; i < 5; i++)
  {
    for(int j = 0; j < 5; j++)
    {
      int num1 = 1;
      int num2 = 1;
      
      
      if ((i == 0 && matrix[i][j] == 1) || (i > 0 && matrix[i][j] == 1 && matrix[i-1][j] == 0))
      {
        
        int k = i +1;
        for (k = i+1; k <5; k++)
        {
          if (matrix[k][j] == 0)
            break;
        }
        num1 = k-i;
      }
        
        
      if ((j == 0 && matrix[i][j] == 1) || (j > 0 && matrix[i][j] == 1 && matrix[i][j-1] == 0))
      { 
        int m = j +1;
        for (m = j+1; m <5; m++)
        {
          if (matrix[i][m] == 0)
            break;
        }
        num2 = m-j;
      }
        
        if (num1 != 1 || num2 != 1)
        {
          x.add(i);
          y.add(j);
          numberHorizontal1s.add(num2);
          numberVertical1s.add(num1);
        }   
    }
  }  
  
  for (int n = 0; n < x.length; n++)
  {
    print('matrix element with x = ' + x[n].toString() + ' and y = ' + y[n].toString() + ' has number of horizontal 1s = ' + numberHorizontal1s[n].toString() + ' and number of vertical 1s = ' + numberVertical1s[n].toString());
  
  }
}


void main() {
  ex8_1();
  ex8_2("O");
  ex8_4();
}


