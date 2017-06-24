# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control is a method of keeping track of the changes that are being made to a project. This is an extremely useful tool because it allows each participant in a project to mark what was changed and when it was changed. If there is any problem with the code in the future, version control makes it easy to find where then error was made and roll the code back to the working version. 
* What is a branch and why would you use one?
    - A branch is a copy of your code where you can experiment with new ideas, or work on different features without altering your original code. This allows you to be able to wait until you have a fully-developed, working feature before you add the code back in, reducing problems. This is also useful because multiple people can be working on different branches at the same time and can add their new features/code back into the master branch when they finish. 
* What is a commit? What makes a good commit message?
    - A commit is essentially a save point. Commits can be thought of as a marker on the timeline of the evolution of a project. Each commit is labelled with when it was commited and a message that explains what was changed. A good commit message will be clear and explicit. It will explain exactly what was changed, which makes it easy to go back later and find where each meaningful change was made in case there is a problem. 
* What is a merge conflict?
    - A merge conflict occurs when git has to review multiple merge requests that alter the same part of the code. For example, if two people try to merge changes to the same line of code, or if one person deletes a file and the other alters it. In these situations git cannot distinguish which of the changes is the correct one and so it will give you an error message, which you can then resolve. 