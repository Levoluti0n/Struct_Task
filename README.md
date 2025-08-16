# Assignment: Structs and Input/Output in C (No Functions)

## Description
In this assignment, you will practice using structs in C along with basic input/output using scanf and printf. The goal is to create a simple program that stores and prints information about a student. You will not use any custom functions; everything should be written inside the main() function.

## Task
1. Define a struct called `Student` with the following fields:
   - `name`: a string (character array) that can store up to 50 characters.
   - `age`: an integer representing the student's age.
   - `grade`: a floating-point number representing the student's grade.
2. In the `main()` function:
   - Declare a variable of type `struct Student`.
   - Prompt the user to enter the student's name, age, and grade.
   - Use `scanf` to read the input values.
   - Print the student's information using `printf` in the exact format shown below.

## Input Format
The program should read input from the user in the following order:
1. Student's name (a single word, maximum 50 characters)
2. Student's age (integer)
3. Student's grade (floating-point number)

Example input:
Alice
20
95.5

## Output Format
The program should print the student's information exactly as shown below:

Student Info:
Name: Alice
Age: 20
Grade: 95.50

Notes:
- The grade should be printed with two decimal places.
- The output must match the format exactly, including line breaks and capitalization, to pass automated tests.

## Requirements
- Use a struct to store the student’s information.
- Do not use any functions other than main().
- Use scanf for input and printf for output.
- Make sure your program compiles without warnings or errors.

## Hints
- Remember to reserve one extra character in your name array for the null terminator (\0). Example: `char name[51]; // 50 chars + 1 for '\0'`
- Use the correct format specifiers in scanf and printf: %s for strings, %d for integers, %f for floats.
- For printing the grade with two decimal places, use: `printf("%.2f", grade);`

## Example
Input:
Alice
20
95.5

Output:
Student Info:
Name: Alice
Age: 20
Grade: 95.50

## Submission
- Complete the student.c file.
- Make sure your code runs correctly and matches the expected output.
- Push your code to the repository created for this assignment in GitHub Classroom.
