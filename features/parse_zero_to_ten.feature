Feature: Recognise from zero to ten
 
  So that I can convert number strings into numerals
  I want to parse strings containing zero to ten

  Scenario Outline: Parse normal numbers
    When '<string>' is parsed 
    Then the number will be <number>
     
  Scenarios: Parse 1 to 10
    | string  | number  |
    | zero    | 0       |
    | one     | 1       |
    | two     | 2       |
    | three   | 3       |
    | four    | 4       |
    | five    | 5       |
    | six     | 6       |
    | seven   | 7       |
    | eight   | 8       |
    | nine    | 9       |
    | ten     | 10      |

  Scenario: No number found
    When 'gibberish' is parsed
    Then an error will be raised stating that no number was found
 
  Scenario: Number string contains noise
    When 'a bratwurst costs two euros' is parsed
    Then the number will be 2

  Scenario: Number is upper case
    When 'a bratwurst costs TWO euros' is parsed
    Then the number will be 2