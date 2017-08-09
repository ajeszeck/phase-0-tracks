// ------ PSUEDOCODE FOR LONGEST WORD METHOD -----
// INPUT: array
// STEPS:
//  - create a variable with an empty string to hold the longestWord
//  - loop through each item of the array
//  - each time count the length of the current word
//  - use if/else block to test if the length of the current word
//  is longer than the word currently stored in the longestWord variable
//  - at the end of the loop (the end of the array), the value in the longestWord
//  variable should be the longest of the whole array
// OUTPUT: return string of longest word in array


function longestWord(array) {
  var longestWord = "";
  for (var i = 0; i < array.length; i++) {
    var currentWordLength = array[i].length;
    if (currentWordLength > longestWord.length) {
      longestWord = array[i];
    }
  }
  console.log(longestWord);
  return longestWord;
}

// ------ PSEUDOCODE FOR OBJECT COMPARISON METHOD ------
// INPUT: two objects
// STEPS: 
//  - use a for loop to iterate through the length of the object
//  - each time testing to see if the key at i matches
//  - if it does, test to make sure value's are equal
//  - if they are, return true, otherwise return false
// OUTPUT: boolean true/false
// NOTES:
//  - You can access object properties in two ways: 
//    - objectName.propertyName or objectName["propertyName"]
//    - "key" in obj // true, regardless of the actual value
//    - !("key" in obj) // true if "key" doesn't exist in object
//    - !"key" in obj   // ERROR!  Equivalent to "false in obj"

function compare(objOne, objTwo) {
  var match = false;
  var count = 0;
  var keys = Object.keys(objOne);
  for (var key in objOne) {
    if (key in objTwo) {
      var currentValue = objOne[key];
      if (!match) {
        if (currentValue == objTwo[key]) {
          match = true;
        } else {
          match = false;
        }
      }
    } else {
      match = false;
    }
  }
  console.log(match);
}

compare({name: "Steven", age: 54}, {name: "Tamir", age: 54}); // true
compare({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); // true
compare({animal: "Cat", legs: 3}, {animal: "Monkey", legs: 4}); // false

longestWord(["long phrase","longest phrase","longer phrase"]); // longest phrase
longestWord(["cat", "dog", "guinea pig", "monkey"]); // guinea pig
longestWord(["alabama", "kentucky", "washington", "rhode island"]); // rhode island