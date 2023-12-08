# INFO-201-PS2

1
1 Functions
1.1 Basic functions
1. Write a function “greeting” that takes two arguments: name and a city, and returns a string:
Hi, I am <name> and I am from <city>, where “<name>” and “<city>” are replaced by
the corresponding argument values.
Note: the function should return the string, not just print it!
2. Demonstrate that the function works by supplying your name and city.
3. Modify your greetings function so that city has a default value, “Seattle”. Give it an appro-
priate name. Demonstrate that it works both when city argument is left out, and when a
different city is used.
1.2 Challenge
1. Write a functionr removeDigits that will remove all digits (i.e. numbers “0” through “9”)
from all elements in a string vector. For instance, "a2b" → "ab"
Demonstrate that your approach is successful by passing a vector of strings with numbers to
your function. For example,
RemoveDigits(c("INFO 201", "CSE 142", "mps-803c", "K2-team '21"))
shoud return "INFO ", "CSE ", "mps-c", "K-team ’"
2 Vectors and vectorized operations
2.1 Create vectors
1. Create a vector ‘movies‘ that contains the names of six movies you like. Print it to show it
looks good.
2. Create a vector top3 that only contains the first three movies in the vector. Use indexing,
not other tools. Show that it is correct.
3. Using your vector and the paste() function, create a vector excited that adds the phrase
“is a great movie!” to the end of each element in your movies vector. Show that it is correct.
4. Create a vector that contains all your movies, except the 4th. Use indexing. Show that it
works.
5. Create a vector numbers that is the numbers 70 through 79
6. How many numbers do you have? Use the length() function to find it. Is it correct?
7. Compute mean of your numbers using mean function.
2
8. Create another vector of numbers that contains 60, 61, ... 69. Give it an appropriate name.
9. Combine both of your number vectors into a single one. Ensure it looks right!
2.2 Indexing
1. Take the vector of all numbers that your created above. Which numbers are larger than 70?
Use logical operations to create a logical vector (TRUE-s/FALSE-s) that tell which number is
larger than 70, store it in a variable iLogical (logical index), and print.
2. Now use the iLogical variable to extract only those numbers that are larger than 70. Print
those.
3. Compute sum of your iLogical vector. Explain what do you get, and what does it mean.
(You can do it in code comments).
4. Check it: extract only numbers that are larger than 70 and compute length of this subset. Do
this using a single line of code, not trough auxiliary variables. Do you get 9 as well?
5. Now use your iLogical vector to extract all numbers that do not exceed 70.
Hint: use logical not.
6. Compute and print squares of all numbers that do not exceed 70. Do this on a single line!
7. Create a logical vector that tells if the number in your vector is even or odd (TRUE/FALSE).
Do not create the subvector manually, use modulo operator and logical indexing to extract
the even numbers!
Hint: check out the modulo operator %%.
8. Print only even numbers in your vector of all numbers. Is it correct?
2.3 Modifying vectors
1. Create a vector of numbers −5, −4, . . . , 4, 5.
2. Replace all negative numbers with “0”.
3. Now implement ReLU function:1 the function should take a vector as an argument, replace
all negative numbers there with “0”, and return the result.
4. Show that it works with a few suitable examples (the example vectors should contain both
positive and negative numbers).
5. Now implement absolute value function: it should replace all negative numbers with the
corresponding positive ones, and return the result.
Show that it works.
1See more about ReLU in Lecture Notes, page 305.
3
2.4 Challenge
1. Consider students Bao-yu, Dai-yu, Tan-chun and Xi-chun. Their corresponding family in-
comes y are 30,000; 60,000; 90,000 and 120,000 respectively. Put these values in vectors.
2. Government offers support b to less wealthy students, calculated like this:
b =
{
0 if y ⩾ 75, 000
1
2 (75, 000 − y) if y < 75, 000
Print the names of students who are eligible for the support.
3. Print the names of the students, followed by the support they are eligible to (potentially “0”).
The output should look something like:
Bao-yu: 22500
...
Xi-chun: 0
Hint: you can use paste() to combine names and benefits. Check out the sep argument. You
can also use collapse argument to combine all these strings to a single one. Finally, strings
look better when you print them with cat.
You can use the ReLU() function you implemented above here as well!
3 Lists
1. Create a list country that should have components name, capital, population and continent.
Use any country you like for this (or invent one ,)
2. What are names of the list? Use function names().
3. Extract capital using dollar-notation
4. Extract population using double-bracket notation
5. Add component area using indirect component name (see the course book 6.3.5).
Print the country list to show that it now includes area.
