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
    currentWordLength = array[i].length;
    if (currentWordLength > longestWord.length) {
      longestWord = array[i];
    }
  }
  return longestWord;
}

console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
console.log(longestWord(["cat", "dog", "guinea pig", "monkey"]));
console.log(longestWord(["alabama", "kentucky", "washington", "rhode island"]));