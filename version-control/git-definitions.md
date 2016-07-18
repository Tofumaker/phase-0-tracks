# Git Definitions

I forgot to put my name down: Derek Yi Yang
Date: 17JUL2016

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  Version control is the process of splitting software into multiple copies and tracking the different 'versions' as they are worked on simultaneously. It is useful as a means for multiple people to work on the same code without editing the same file back and forth. It also allows for reversion to previous versions of the software.

* What is a branch and why would you use one?
  A branch is a copy of a set of master code, or another branch. It forms the basis of version control. If there is a master code, good practice would be to copy that set of code as another branch, work on the branch so the master is kept intact, and then merge the updated branch back into the master.

* What is a commit? What makes a good commit message?
  A commit is a save-point, or version, of code. In Git, a commit is used as a function to cement a set of changes to code. A good commit message entails making clear what changes, or additions were made during this current work cycle.

* What is a merge conflict?
  A merge conflict occurs when two merges to a master code have differing edits to the same line(s) of code.