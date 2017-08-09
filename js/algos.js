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

// ---- PSEUDOCODE TO GENERATE RANDOM TEST DATA ------
// INPUT: number for length of array
// STEPS: 
//   - Create an array of the alphabet and an empty array for new strings
//   - NOTE: For random number - Math.floor((Math.random() * 10) + 1);
//   - Create a for loop that uses the input of length as a conditional to exit
//    - Create variable to store random number between 1 and 10
//    - Create variable to store random number between 0 and 25
//    - Create empty string to hold generated word
//    - Use a while loop to create string with conditional being < random number variable between 1 and 10
//      - Use random generated number between 0 and 25 to add a random
//        letter from the alphabet to the empty string 
//      - When while loop finishes, add empty string to empty array for strings
// OUTPUT: An array of a given length populated with strings of varying length between 1 and 10 letters

function randomStrings(number) {
  var alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  var newArray = [];
  var randomStringLength = Math.floor((Math.random() * 10) + 1);
  console.log(randomStringLength);
  for (var i = 0; i < number; i++) {
    var newString = "";
    var index = 0
    while (index < randomStringLength) {
      var randomNumber = Math.floor((Math.random()* 26) + 1);
      var randomLetter = alphabet[randomNumber];
      newString = newString + randomLetter;
      index++;
    }
    newArray.push(newString);
    randomStringLength = Math.floor((Math.random() * 10) + 1);
    console.log(randomStringLength);
  }
  return newArray;
}

console.log(randomStrings(6));
// compare({name: "Steven", age: 54}, {name: "Tamir", age: 54}); // true
// compare({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); // true
// compare({animal: "Cat", legs: 3}, {animal: "Monkey", legs: 4}); // false

// longestWord(["long phrase","longest phrase","longer phrase"]); // longest phrase
// longestWord(["cat", "dog", "guinea pig", "monkey"]); // guinea pig
// longestWord(["alabama", "kentucky", "washington", "rhode island"]); // rhode island