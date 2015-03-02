Java Utilities
=========

A repo for Java utilities I can re-use in future projects.

This repo currently contains:

Undo/Redo Util
-----
This repo is designed to make it easy to implement undo/redo in a Java application. It wraps application actions 
using simple interfaces to let undo/redo be built in from the start.

Grading Script
-----
This is a simple shell script that uses bash tools to find some common Java code quality errors I often encounter as a 
TA. When run over the top of directory contained in a git repo, it returns the following:
* Git Contributions-How many commits does each author in the repo have?
* Git commit dates-What were the most 'productive' and least 'productive' days?
* Uses of Implementation-specific data structures: ArrayList, HashMap, and HashSet (as opposed to generic Lists, Maps, and Sets).
* Number of classes that inherit from another.
* Number of classes that implement an interface.
* Number of interfaces.
* Number of public variables used and where they are used.
* Number of global variables used and where they are used.
* Mutliple if statements used in succession (not necessarily a sign of bad code, but often indicates place where inheritance should have been used).
  * Requires pcregrip to be installed in your bash environment 
* Switch statements 
