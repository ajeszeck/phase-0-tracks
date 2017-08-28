WHAT TO USE:
    - Use a tutorial
    - Check docs
    - Do research in chunks (maybe 20 minutes?)
    - Create a super basic html site
    - Create a really basic CSS
    - Use jquery in a JS file to do some cool stuff
    - Create a list of some basic jquery commands
    - Examples from W3 Schools are great

NOTES DURING STUDY
 - jquery uses css selectors to select elements
 - $ is a shorthand for jquery in a function like, "jquery( 'li' );" 
 - When you call the $() function and pass a selector to it, you create a new jQuery object. 
 - $(document).ready(function(){
        $("p").click(function(){
            $(this).hide();
        });
    });

- Need to use 
- $( document ).ready(function() {
  console.log( 'ready!' );
    }); 
  to ensure page is in a state that is ready to be manipulated OR:
- $(function() {
  console.log( 'ready!' );
});
  Which is shorthand.

GET SOME ELEMENTS
 - simply pass the appropriate CSS selector to $()
 - any selection you make will only contain elements that existed when you made the selection, any elements you added after will not be available in that new element.

OTHER WAYS TO CREATE A JQUERY OBJECT
 - from a DOM element: $( document.body.children[0] );
 - from a list of DOM elements: $( [ window, document ] );
 - in the context of a DOM element:
    var firstBodyChild = document.body.children[0];
    $( 'li', firstBodyChild ); 
 - within a previous selection: 
    var paragraph = $( 'p' );
    $( 'a', paragraph );

CREATING NEW ELEMENTS
 - $( '<p>' ); --> creates a new <p> element with no content
 - $( '<p>Hello!</p>' ); --> creates a new <p> element with content
 - $( '<p class="greet">Hello!</p>' ); --> creates a new <p> with content and class
 - $( '<p>', {
  html: 'Hello!',
  'class': 'greet' <-- Remember to put quotes around class (reserved word in Javascript)
  });

WORKING WITH SELECTIONS
 - 






