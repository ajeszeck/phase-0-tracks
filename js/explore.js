// REVERSE FUNCTION
// INPUT: Store a word given to to the function as a variable
// STEPS:
  //Use a loop to cycle through the letters of the word from back to front
  // Storing the current letter to a new array as the loop runs
// OUTPUT: Return the new reversed string

function reverse(string) {
  var reversed_word = "";
  for (var i = string.length - 1; i > -1; i--) {
    reversed_word += string[i];
    console.log(string[i]);
  }

  return reversed_word;
}

if (3 > 2) {
  var word = reverse("hello");
  console.log(word)
} else {
  console.log("I will not complete your task.")
}