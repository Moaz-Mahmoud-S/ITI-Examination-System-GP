

use [ITI_Graduation_Project]
--- DB Development in SQL
-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(1, 'What does "C#" stand for?', 0, 1),
(2, 'Which of the following is a feature of C#?', 0, 1),
(3, 'What is the entry point of a C# program?', 0, 1),
(4, 'Which keyword is used to define a class in C#?', 0, 1),
(5, 'How do you declare a variable in C#?', 0, 1),
(6, 'Which of the following is a value type in C#?', 0, 1),
(7, 'What is the purpose of the "using" keyword in C#?', 0, 1),
(8, 'Which operator is used for string concatenation in C#?', 0, 1),
(9, 'What is the correct syntax for an if statement in C#?', 0, 1),
(10, 'Which of the following is a loop structure in C#?', 0, 1);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(11, 'C# is a statically typed language.', 1, 1),
(12, 'The "Main" method in C# must always return an integer.', 1, 1),
(13, 'C# supports multiple inheritance directly.', 1, 1),
(14, 'In C#, an interface can contain implementation code.', 1, 1),
(15, 'C# is case-sensitive.', 1, 1),
(16, 'The "var" keyword in C# is used for declaring variables with dynamic types.', 1, 1),
(17, 'In C#, strings are immutable.', 1, 1),
(18, 'The "foreach" loop in C# can iterate over any collection that implements IEnumerable.', 1, 1),
(19, 'A struct in C# is a reference type.', 1, 1),
(20, 'C# supports operator overloading.', 1, 1);

-- Choices for Question 1 (What does "C#" stand for?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('It doesn’t stand for anything', 1, 1),
('C Plus', 0, 1),
('C Sharp', 0, 1);

-- Choices for Question 2 (Which of the following is a feature of C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Garbage Collection', 1, 2),
('Multiple Inheritance', 0, 2),
('Unmanaged Code', 0, 2);

-- Choices for Question 3 (What is the entry point of a C# program?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Main method', 1, 3),
('Start method', 0, 3),
('Entry method', 0, 3);

-- Choices for Question 4 (Which keyword is used to define a class in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('class', 1, 4),
('define', 0, 4),
('type', 0, 4);

-- Choices for Question 5 (How do you declare a variable in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int x = 10;', 1, 5),
('variable x = 10;', 0, 5),
('let x = 10;', 0, 5);

-- Choices for Question 6 (Which of the following is a value type in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int', 1, 6),
('string', 0, 6),
('object', 0, 6);

-- Choices for Question 7 (What is the purpose of the "using" keyword in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To include namespaces', 1, 7),
('To import classes', 0, 7),
('To define a class', 0, 7);

-- Choices for Question 8 (Which operator is used for string concatenation in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The + operator', 1, 8),
('The & operator', 0, 8),
('The % operator', 0, 8);

-- Choices for Question 9 (What is the correct syntax for an if statement in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('if (condition) { }', 1, 9),
('if condition { }', 0, 9),
('if (condition) then { }', 0, 9);

-- Choices for Question 10 (Which of the following is a loop structure in C#?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('for loop', 1, 10),
('while loop', 0, 10),
('repeat loop', 0, 10);

-- Choices for Question 11 (C# is a statically typed language.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 11),
('False', 0, 11);

-- Choices for Question 12 (The "Main" method in C# must always return an integer.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 12),
('False', 1, 12);

-- Choices for Question 13 (C# supports multiple inheritance directly.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 13),
('False', 1, 13);

-- Choices for Question 14 (In C#, an interface can contain implementation code.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 14),
('False', 1, 14);

-- Choices for Question 15 (C# is case-sensitive.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 15),
('False', 0, 15);

-- Choices for Question 16 (The "var" keyword in C# is used for declaring variables with dynamic types.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 16),
('False', 1, 16);

-- Choices for Question 17 (In C#, strings are immutable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 17),
('False', 0, 17);

-- Choices for Question 18 (The "foreach" loop in C# can iterate over any collection that implements IEnumerable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 18),
('False', 0, 18);

-- Choices for Question 19 (A struct in C# is a reference type.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 19),
('False', 1, 19);

-- Choices for Question 20 (C# supports operator overloading.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 20),
('False', 0, 20);

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(21, 'What is C++ primarily used for?', 0, 2),
(22, 'Which of the following is a feature of C++?', 0, 2),
(23, 'What is the correct syntax to include a header file in C++?', 0, 2),
(24, 'Which keyword is used to define a class in C++?', 0, 2),
(25, 'What is the correct way to declare a pointer in C++?', 0, 2),
(26, 'Which of the following is a C++ Standard Library container?', 0, 2),
(27, 'What is the output of the following code: std::cout << "Hello World";', 0, 2),
(28, 'How do you declare a constant variable in C++?', 0, 2),
(29, 'Which operator is used to access a member function of an object in C++?', 0, 2),
(30, 'Which of the following is a loop structure in C++?', 0, 2);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(31, 'C++ supports object-oriented programming.', 1, 2),
(32, 'In C++, the "new" keyword is used to create objects dynamically.', 1, 2),
(33, 'C++ allows multiple inheritance.', 1, 2),
(34, 'A destructor in C++ is called automatically when an object goes out of scope.', 1, 2),
(35, 'C++ does not support operator overloading.', 1, 2),
(36, 'Templates in C++ allow functions and classes to operate with generic types.', 1, 2),
(37, 'C++ requires that all variables be declared before they are used.', 1, 2),
(38, 'C++ supports both procedural and object-oriented programming.', 1, 2),
(39, 'The "main" function in C++ must return an integer.', 1, 2),
(40, 'In C++, a reference is a constant pointer.', 1, 2);

-- Choices for Question 21 (What is C++ primarily used for?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('System programming', 1, 21),
('Web development', 0, 21),
('Data science', 0, 21);

-- Choices for Question 22 (Which of the following is a feature of C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Object-oriented programming', 1, 22),
('Automatic memory management', 0, 22),
('Interpreted execution', 0, 22);

-- Choices for Question 23 (What is the correct syntax to include a header file in C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('#include <iostream>', 1, 23),
('#include "iostream"', 0, 23),
('#include iostream', 0, 23);

-- Choices for Question 24 (Which keyword is used to define a class in C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('class', 1, 24),
('define', 0, 24),
('type', 0, 24);

-- Choices for Question 25 (What is the correct way to declare a pointer in C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int* ptr;', 1, 25),
('int ptr;', 0, 25),
('pointer int ptr;', 0, 25);

-- Choices for Question 26 (Which of the following is a C++ Standard Library container?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('std::vector', 1, 26),
('std::array', 0, 26),
('std::map', 0, 26);

-- Choices for Question 27 (What is the output of the following code: std::cout << "Hello World";)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Hello World', 1, 27),
('Hello', 0, 27),
('World', 0, 27);

-- Choices for Question 28 (How do you declare a constant variable in C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('const int x = 10;', 1, 28),
('int const x = 10;', 0, 28),
('constant int x = 10;', 0, 28);

-- Choices for Question 29 (Which operator is used to access a member function of an object in C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The . operator', 1, 29),
('The -> operator', 0, 29),
('The :: operator', 0, 29);

-- Choices for Question 30 (Which of the following is a loop structure in C++?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('for loop', 1, 30),
('repeat loop', 0, 30),
('iterate loop', 0, 30);


-- Choices for Question 31 (C++ supports object-oriented programming.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 31),
('False', 0, 31);

-- Choices for Question 32 (In C++, the "new" keyword is used to create objects dynamically.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 32),
('False', 0, 32);

-- Choices for Question 33 (C++ allows multiple inheritance.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 33),
('False', 0, 33);

-- Choices for Question 34 (A destructor in C++ is called automatically when an object goes out of scope.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 34),
('False', 0, 34);

-- Choices for Question 35 (C++ does not support operator overloading.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 35),
('False', 1, 35);

-- Choices for Question 36 (Templates in C++ allow functions and classes to operate with generic types.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 36),
('False', 0, 36);

-- Choices for Question 37 (C++ requires that all variables be declared before they are used.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 37),
('False', 0, 37);

-- Choices for Question 38 (C++ supports both procedural and object-oriented programming.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 38),
('False', 0, 38);

-- Choices for Question 39 (The "main" function in C++ must return an integer.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 39),
('False', 0, 39);

-- Choices for Question 40 (In C++, a reference is a constant pointer.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 40),
('False', 1, 40);


-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(41, 'Which of the following is a feature of Java?', 0, 3),
(42, 'What is the entry point of a Java program?', 0, 3),
(43, 'Which keyword is used to define a class in Java?', 0, 3),
(44, 'How do you declare a variable in Java?', 0, 3),
(45, 'Which of the following is a value type in Java?', 0, 3),
(46, 'What is the purpose of the "import" keyword in Java?', 0, 3),
(47, 'Which operator is used for string concatenation in Java?', 0, 3),
(48, 'What is the correct syntax for an if statement in Java?', 0, 3),
(49, 'Which of the following is a loop structure in Java?', 0, 3),
(50, 'What does JVM stand for?', 0, 3);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(51, 'Java is a platform-independent language.', 1, 3),
(52, 'The "main" method in Java must always return an integer.', 1, 3),
(53, 'Java supports multiple inheritance directly.', 1, 3),
(54, 'In Java, an interface can contain implementation code.', 1, 3),
(55, 'Java is case-sensitive.', 1, 3),
(56, 'The "var" keyword in Java is used for declaring variables with dynamic types.', 1, 3),
(57, 'In Java, strings are immutable.', 1, 3),
(58, 'The "for-each" loop in Java can iterate over any collection that implements Iterable.', 1, 3),
(59, 'A class in Java can only extend one class.', 1, 3),
(60, 'Java supports operator overloading.', 1, 3);

-- Choices for Question 41 (Which of the following is a feature of Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Object-oriented', 1, 41),
('Platform-dependent', 0, 41),
('Does not support multithreading', 0, 41);

-- Choices for Question 42 (What is the entry point of a Java program?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('main method', 1, 42),
('start method', 0, 42),
('entry method', 0, 42);

-- Choices for Question 43 (Which keyword is used to define a class in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('class', 1, 43),
('define', 0, 43),
('type', 0, 43);

-- Choices for Question 44 (How do you declare a variable in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int x = 10;', 1, 44),
('variable x = 10;', 0, 44),
('let x = 10;', 0, 44);

-- Choices for Question 45 (Which of the following is a value type in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int', 1, 45),
('String', 0, 45),
('Object', 0, 45);

-- Choices for Question 46 (What is the purpose of the "import" keyword in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To include other classes and packages', 1, 46),
('To import functions', 0, 46),
('To define a class', 0, 46);

-- Choices for Question 47 (Which operator is used for string concatenation in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The + operator', 1, 47),
('The & operator', 0, 47),
('The % operator', 0, 47);

-- Choices for Question 48 (What is the correct syntax for an if statement in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('if (condition) { }', 1, 48),
('if condition { }', 0, 48),
('if (condition) then { }', 0, 48);

-- Choices for Question 49 (Which of the following is a loop structure in Java?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('for loop', 1, 49),
('repeat loop', 0, 49),
('iterate loop', 0, 49);

-- Choices for Question 50 (What does JVM stand for?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Java Virtual Machine', 1, 50),
('Java Visual Machine', 0, 50),
('Java Variable Machine', 0, 50);

-- Choices for Question 51 (Java is a platform-independent language.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 51),
('False', 0, 51);

-- Choices for Question 52 (The "main" method in Java must always return an integer.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 52),
('False', 1, 52);

-- Choices for Question 53 (Java supports multiple inheritance directly.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 53),
('False', 1, 53);

-- Choices for Question 54 (In Java, an interface can contain implementation code.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 54),
('False', 1, 54);

-- Choices for Question 55 (Java is case-sensitive.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 55),
('False', 0, 55);

-- Choices for Question 56 (The "var" keyword in Java is used for declaring variables with dynamic types.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 56),
('False', 1, 56);

-- Choices for Question 57 (In Java, strings are immutable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 57),
('False', 0, 57);

-- Choices for Question 58 (The "for-each" loop in Java can iterate over any collection that implements Iterable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 58),
('False', 0, 58);

-- Choices for Question 59 (A class in Java can only extend one class.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 59),
('False', 0, 59);

-- Choices for Question 60 (Java supports operator overloading.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 60),
('False', 1, 60);

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(61, 'Which of the following is a correct way to declare a variable in Python?', 0, 4),
(62, 'What is the output of the following code: print(2 ** 3)?', 0, 4),
(63, 'Which of the following is used to handle exceptions in Python?', 0, 4),
(64, 'How do you define a function in Python?', 0, 4),
(65, 'Which of the following is a mutable data type in Python?', 0, 4),
(66, 'How do you create a list in Python?', 0, 4),
(67, 'What does the "len()" function do in Python?', 0, 4),
(68, 'How can you add a comment in Python?', 0, 4),
(69, 'Which operator is used for string concatenation in Python?', 0, 4),
(70, 'How do you import a module in Python?', 0, 4);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(71, 'Python is a compiled language.', 1, 4),
(72, 'The "def" keyword is used to define a function in Python.', 1, 4),
(73, 'In Python, lists are immutable.', 1, 4),
(74, 'Python uses indentation to define code blocks.', 1, 4),
(75, 'The "self" keyword in Python refers to the class itself.', 1, 4),
(76, 'Python supports both procedural and object-oriented programming.', 1, 4),
(77, 'A tuple in Python is mutable.', 1, 4),
(78, 'The "print()" function in Python can take multiple arguments.', 1, 4),
(79, 'Python has a built-in "switch" statement.', 1, 4),
(80, 'In Python, you can use "==" to check if two variables are equal.', 1, 4);

-- Choices for Question 61 (Which of the following is a correct way to declare a variable in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('x = 10', 1, 61),
('int x = 10', 0, 61),
('let x = 10', 0, 61);

-- Choices for Question 62 (What is the output of the following code: print(2 ** 3)?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('8', 1, 62),
('6', 0, 62),
('9', 0, 62);

-- Choices for Question 63 (Which of the following is used to handle exceptions in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('try/except', 1, 63),
('catch/finally', 0, 63),
('throw/catch', 0, 63);

-- Choices for Question 64 (How do you define a function in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('def function_name():', 1, 64),
('function function_name():', 0, 64),
('define function_name():', 0, 64);

-- Choices for Question 65 (Which of the following is a mutable data type in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('list', 1, 65),
('tuple', 0, 65),
('string', 0, 65);

-- Choices for Question 66 (How do you create a list in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('my_list = [1, 2, 3]', 1, 66),
('my_list = (1, 2, 3)', 0, 66),
('my_list = {1, 2, 3}', 0, 66);

-- Choices for Question 67 (What does the "len()" function do in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Returns the length of an object', 1, 67),
('Converts a number to a string', 0, 67),
('Calculates the sum of elements', 0, 67);

-- Choices for Question 68 (How can you add a comment in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('# This is a comment', 1, 68),
('/* This is a comment */', 0, 68),
('// This is a comment', 0, 68);

-- Choices for Question 69 (Which operator is used for string concatenation in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The + operator', 1, 69),
('The & operator', 0, 69),
('The % operator', 0, 69);

-- Choices for Question 70 (How do you import a module in Python?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('import module_name', 1, 70),
('include module_name', 0, 70),
('require module_name', 0, 70);

-- Choices for Question 71 (Python is a compiled language.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 71),
('False', 1, 71);

-- Choices for Question 72 (The "def" keyword is used to define a function in Python.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 72),
('False', 0, 72);

-- Choices for Question 73 (In Python, lists are immutable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 73),
('False', 1, 73);

-- Choices for Question 74 (Python uses indentation to define code blocks.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 74),
('False', 0, 74);

-- Choices for Question 75 (The "self" keyword in Python refers to the class itself.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 75),
('False', 1, 75);

-- Choices for Question 76 (Python supports both procedural and object-oriented programming.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 76),
('False', 0, 76);

-- Choices for Question 77 (A tuple in Python is mutable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 77),
('False', 1, 77);

-- Choices for Question 78 (The "print()" function in Python can take multiple arguments.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 78),
('False', 0, 78);

-- Choices for Question 79 (Python has a built-in "switch" statement.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 79),
('False', 1, 79);

-- Choices for Question 80 (In Python, you can use "==" to check if two variables are equal.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 80),
('False', 0, 80);

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(81, 'Which of the following is used to define a constant in C?', 0, 5),
(82, 'What is the output of the following code: printf("%d", 10 / 3);?', 0, 5),
(83, 'Which keyword is used to allocate memory dynamically in C?', 0, 5),
(84, 'What does the "scanf()" function do in C?', 0, 5),
(85, 'How do you declare an array in C?', 0, 5),
(86, 'What is the correct way to include a header file in C?', 0, 5),
(87, 'Which operator is used to get the address of a variable in C?', 0, 5),
(88, 'What is the default return type of a function in C if not specified?', 0, 5),
(89, 'Which of the following is a loop structure in C?', 0, 5),
(90, 'What does the "free()" function do in C?', 0, 5);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(91, 'In C,strings are null-terminated arrays of characters.', 1, 5),
(92, 'The "main()" function in C must always return an integer.', 1, 5),
(93, 'In C, arrays are passed to functions by value.', 1, 5),
(94, 'The "goto" statement is used to break out of loops in C.', 1, 5),
(95, 'In C, functions can be defined inside other functions.', 1, 5),
(96, 'The "sizeof()" operator returns the size of a variable or data type in bytes.', 1, 5),
(97, 'In C, "int" is a data type that can store floating-point numbers.', 1, 5),
(98, 'C does not support function overloading.', 1, 5),
(99, 'The "return" statement in C can be used to exit from a function early.', 1, 5),
(100, 'In C, you can use the "switch" statement to execute a block of code based on the value of a variable.', 1, 5);

-- Choices for Question 81 (Which of the following is used to define a constant in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('#define', 1, 81),
('const', 0, 81),
('immutable', 0, 81);

-- Choices for Question 82 (What is the output of the following code: printf("%d", 10 / 3);?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('3', 1, 82),
('3.333', 0, 82),
('4', 0, 82);

-- Choices for Question 83 (Which keyword is used to allocate memory dynamically in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('malloc', 1, 83),
('alloc', 0, 83),
('new', 0, 83);

-- Choices for Question 84 (What does the "scanf()" function do in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Reads input from the user', 1, 84),
('Prints output to the console', 0, 84),
('Allocates memory dynamically', 0, 84);

-- Choices for Question 85 (How do you declare an array in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int arr[10];', 1, 85),
('array int[10];', 0, 85),
('int[10] arr;', 0, 85);

-- Choices for Question 86 (What is the correct way to include a header file in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('#include <header.h>', 1, 86),
('include "header.h"', 0, 86),
('import <header.h>', 0, 86);

-- Choices for Question 87 (Which operator is used to get the address of a variable in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('&', 1, 87),
('*', 0, 87),
('#', 0, 87);

-- Choices for Question 88 (What is the default return type of a function in C if not specified?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('int', 1, 88),
('void', 0, 88),
('float', 0, 88);

-- Choices for Question 89 (Which of the following is a loop structure in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('for loop', 1, 89),
('repeat loop', 0, 89),
('foreach loop', 0, 89);

-- Choices for Question 90 (What does the "free()" function do in C?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Deallocates memory', 1, 90),
('Allocates memory', 0, 90),
('Initializes a variable', 0, 90);

-- Choices for Question 91 (In C, strings are null-terminated arrays of characters.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 91),
('False', 0, 91);

-- Choices for Question 92 (The "main()" function in C must always return an integer.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 92),
('False', 0, 92);

-- Choices for Question 93 (In C, arrays are passed to functions by value.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 93),
('False', 1, 93);

-- Choices for Question 94 (The "goto" statement is used to break out of loops in C.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 94),
('False', 1, 94);

-- Choices for Question 95 (In C, functions can be defined inside other functions.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 95),
('False', 1, 95);

-- Choices for Question 96 (The "sizeof()" operator returns the size of a variable or data type in bytes.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 96),
('False', 0, 96);

-- Choices for Question 97 (In C, "int" is a data type that can store floating-point numbers.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 97),
('False', 1, 97);

-- Choices for Question 98 (C does not support function overloading.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 98),
('False', 0, 98);

-- Choices for Question 99 (The "return" statement in C can be used to exit from a function early.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 99),
('False', 0, 99);

-- Choices for Question 100 (In C, you can use the "switch" statement to execute a block of code based on the value of a variable.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 100),
('False', 0, 100);

















-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(101, 'What does SQL stand for?', 0, 6),
(102, 'Which SQL clause is used to filter records?', 0, 6),
(103, 'What type of join returns all rows from the left table and matched rows from the right table?', 0, 6),
(104, 'Which SQL keyword is used to prevent duplicate records in the result set?', 0, 6),
(105, 'Which command is used to add a new record to a table?', 0, 6),
(106, 'How do you delete a table in SQL?', 0, 6),
(107, 'What SQL function is used to calculate the total sum of a numeric column?', 0, 6),
(108, 'Which statement is used to modify existing records in a table?', 0, 6),
(109, 'Which SQL keyword is used to sort the result set?', 0, 6),
(110, 'What does the SQL function COUNT() do?', 0, 6);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(111, 'SQL is a procedural programming language.', 1, 6),
(112, 'The DISTINCT keyword is used to filter out duplicate rows.', 1, 6),
(113, 'An INNER JOIN returns all records from both tables.', 1, 6),
(114, 'The GROUP BY clause is used to group rows that have the same values.', 1, 6),
(115, 'The UPDATE command is used to change the structure of a table.', 1, 6),
(116, 'The HAVING clause is used with GROUP BY to filter groups.', 1, 6),
(117, 'The DELETE command removes all records from a table.', 1, 6),
(118, 'The INNER JOIN keyword returns only matching rows.', 1, 6),
(119, 'SQL queries are not case-sensitive.', 1, 6),
(120, 'The LIMIT clause is used to restrict the number of rows returned by a query.', 1, 6);

-- Choices for Question 101
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Structured Query Language', 1, 101),
('Simple Query Language', 0, 101),
('Standard Query Language', 0, 101),
('System Query Language', 0, 101);

-- Choices for Question 102
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('ORDER BY', 0, 102),
('WHERE', 1, 102),
('GROUP BY', 0, 102),
('HAVING', 0, 102);

-- Choices for Question 103
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('INNER JOIN', 0, 103),
('RIGHT JOIN', 0, 103),
('LEFT JOIN', 1, 103),
('FULL JOIN', 0, 103);

-- Choices for Question 104
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('DISTINCT', 1, 104),
('UNIQUE', 0, 104),
('DIFFERENT', 0, 104),
('NO_DUPLICATES', 0, 104);

-- Choices for Question 105
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('INSERT INTO', 1, 105),
('ADD RECORD', 0, 105),
('CREATE RECORD', 0, 105),
('UPDATE', 0, 105);

-- Choices for Question 106
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('DROP TABLE', 1, 106),
('DELETE TABLE', 0, 106),
('REMOVE TABLE', 0, 106),
('TRUNCATE TABLE', 0, 106);

-- Choices for Question 107
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('TOTAL()', 0, 107),
('SUM()', 1, 107),
('COUNT()', 0, 107),
('ADD()', 0, 107);

-- Choices for Question 108
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('MODIFY', 0, 108),
('UPDATE', 1, 108),
('CHANGE', 0, 108),
('ALTER', 0, 108);

-- Choices for Question 109
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('SORT BY', 0, 109),
('ORDER BY', 1, 109),
('GROUP BY', 0, 109),
('FILTER BY', 0, 109);

-- Choices for Question 110
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Counts the number of rows', 1, 110),
('Counts the number of columns', 0, 110),
('Counts the number of distinct values', 0, 110),
('Counts the number of unique rows', 0, 110);

-- Choices for Question 111
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 111),
('False', 1, 111);

-- Choices for Question 112
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 112),
('False', 0, 112);

-- Choices for Question 113
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 113),
('False', 1, 113);

-- Choices for Question 114
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 114),
('False', 0, 114);

-- Choices for Question 115
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 115),
('False', 1, 115);

-- Choices for Question 116
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 116),
('False', 0, 116);

-- Choices for Question 117
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 117),
('False', 1, 117);

-- Choices for Question 118
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 118),
('False', 0, 118);

-- Choices for Question 119
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 119),
('False', 0, 119);

-- Choices for Question 120
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 120),
('False', 0, 120);



--- Advanced SQL

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(121, 'What is the purpose of a SQL VIEW?', 0, 7),
(122, 'Which SQL clause is used to combine the results of two queries?', 0, 7),
(123, 'What does the SQL command MERGE do?', 0, 7),
(124, 'Which function is used to return the current date and time in SQL?', 0, 7),
(125, 'How do you create a temporary table in SQL?', 0, 7),
(126, 'Which SQL clause is used to filter groups of rows?', 0, 7),
(127, 'What is the purpose of the SQL ROLLUP operator?', 0, 7),
(128, 'Which keyword is used to retrieve unique values from a column?', 0, 7),
(129, 'What does the SQL COALESCE function do?', 0, 7),
(130, 'How can you limit the number of rows returned by a query?', 0, 7);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(131, 'A SQL VIEW is a physical table that stores data.', 1, 7),
(132, 'The UNION ALL operator combines the result sets of two queries, including duplicates.', 1, 7),
(133, 'The SQL MERGE command is used to synchronize two tables.', 1, 7),
(134, 'The NOW() function returns the current date and time.', 1, 7),
(135, 'Temporary tables are automatically deleted when the connection is closed.', 1, 7),
(136, 'The GROUP BY clause can be used to filter rows before aggregation.', 1, 7),
(137, 'The ROLLUP operator adds subtotals to the result set.', 1, 7),
(138, 'The DISTINCT keyword removes duplicate rows from the result set.', 1, 7),
(139, 'COALESCE function returns the first non-null value in a list.', 1, 7),
(140, 'The LIMIT clause can be used to restrict the number of rows in some SQL databases.', 1, 7);

-- Choices for Question 121
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To store data permanently', 0, 121),
('To create a virtual table', 1, 121),
('To index a table', 0, 121),
('To join two tables', 0, 121);

-- Choices for Question 122
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('JOIN', 0, 122),
('UNION', 1, 122),
('INTERSECT', 0, 122),
('EXCEPT', 0, 122);

-- Choices for Question 123
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Deletes rows from a table', 0, 123),
('Updates rows in a table', 0, 123),
('Inserts rows into a table', 0, 123),
('Synchronizes two tables', 1, 123);

-- Choices for Question 124
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('CURRENT_DATE()', 0, 124),
('GETDATE()', 1, 124),
('NOW()', 0, 124),
('SYSDATE()', 0, 124);

-- Choices for Question 125
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('CREATE TEMPORARY TABLE', 1, 125),
('CREATE TABLE TEMP', 0, 125),
('TEMPORARY CREATE TABLE', 0, 125),
('CREATE TABLE WITH TEMP', 0, 125);

-- Choices for Question 126
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('ORDER BY', 0, 126),
('GROUP BY', 1, 126),
('HAVING', 0, 126),
('FILTER BY', 0, 126);

-- Choices for Question 127
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Adds subtotals and grand totals', 1, 127),
('Removes duplicates', 0, 127),
('Filters rows', 0, 127),
('Joins tables', 0, 127);

-- Choices for Question 128
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('UNIQUE', 1, 128),
('DISTINCT', 0, 128),
('EXCLUSIVE', 0, 128),
('SOLE', 0, 128);

-- Choices for Question 129
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Returns the first non-null value', 1, 129),
('Returns the sum of values', 0, 129),
('Returns the maximum value', 0, 129),
('Returns the minimum value', 0, 129);

-- Choices for Question 130
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('USE LIMIT', 0, 130),
('TOP', 0, 130),
('ROWNUM', 0, 130),
('LIMIT', 1, 130);

-- Choices for Question 131
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 131),
('False', 1, 131);

-- Choices for Question 132
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 132),
('False', 0, 132);

-- Choices for Question 133
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 133),
('False', 0, 133);

-- Choices for Question 134
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 134),
('False', 0, 134);

-- Choices for Question 135
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 135),
('False', 0, 135);

-- Choices for Question 136
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 136),
('False', 1, 136);

-- Choices for Question 137
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 137),
('False', 0, 137);

-- Choices for Question 138
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 138),
('False', 0, 138);

-- Choices for Question 139
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 139),
('False', 0, 139);

-- Choices for Question 140
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 140),
('False', 0, 140);


---DB Design

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(141, 'What is an entity in database design?', 0, 8),
(142, 'Which diagram shows relationships between entities?', 0, 8),
(143, 'What is a primary key?', 0, 8),
(144, 'Which type of relationship is represented by a diamond in ER diagrams?', 0, 8),
(145, 'What does normalization do?', 0, 8),
(146, 'What is a foreign key?', 0, 8),
(147, 'Which normal form eliminates duplicate columns?', 0, 8),
(148, 'What is a composite key?', 0, 8),
(149, 'What is the purpose of an ERD?', 0, 8),
(150, 'What type of relationship does a one-to-many represent?', 0, 8);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(151, 'An entity represents a real-world object in database design.', 1, 8),
(152, 'In an ER diagram, a diamond represents an attribute.', 1, 8),
(153, 'Normalization helps in minimizing redundancy.', 1, 8),
(154, 'A primary key can contain null values.', 1, 8),
(155, 'A composite key is made up of multiple foreign keys.', 1, 8),
(156, 'In a one-to-many relationship, one entity can relate to multiple instances of another entity.', 1, 8),
(157, 'An ERD is used to show the schema of a database.', 1, 8),
(158, 'A foreign key is used to uniquely identify a record in a table.', 1, 8),
(159, 'The second normal form deals with transitive dependency.', 1, 8),
(160, 'Attributes are typically represented by ovals in an ERD.', 1, 8);

-- Choices for Question 141
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A table', 0, 141),
('A column', 0, 141),
('A real-world object or concept', 1, 141),
('A data type', 0, 141);

-- Choices for Question 142
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Entity-Relationship Diagram', 1, 142),
('Flowchart', 0, 142),
('Class Diagram', 0, 142),
('Use Case Diagram', 0, 142);

-- Choices for Question 143
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A unique identifier for a record', 1, 143),
('A link between tables', 0, 143),
('A table name', 0, 143),
('An attribute', 0, 143);

-- Choices for Question 144
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Entity', 0, 144),
('Relationship', 1, 144),
('Attribute', 0, 144),
('Key', 0, 144);

-- Choices for Question 145
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Increases redundancy', 0, 145),
('Decreases redundancy', 1, 145),
('Eliminates all anomalies', 0, 145),
('Only normalizes attributes', 0, 145);

-- Choices for Question 146
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A unique identifier', 0, 146),
('A link to another table', 1, 146),
('A data type', 0, 146),
('An attribute', 0, 146);

-- Choices for Question 147
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('First normal form', 0, 147),
('Second normal form', 1, 147),
('Third normal form', 0, 147),
('Boyce-Codd normal form', 0, 147);

-- Choices for Question 148
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A key composed of multiple attributes', 1, 148),
('A key that references another table', 0, 148),
('A unique identifier for a record', 0, 148),
('A foreign key', 0, 148);

-- Choices for Question 149
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To represent data visually', 0, 149),
('To show the relationships between entities', 1, 149),
('To define data types', 0, 149),
('To store data', 0, 149);

-- Choices for Question 150
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('One-to-Many', 1, 150),
('One-to-One', 0, 150),
('Many-to-Many', 0, 150),
('Many-to-One', 0, 150);

-- Choices for Question 151
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 151),
('False', 0, 151);

-- Choices for Question 152
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 152),
('False', 1, 152);

-- Choices for Question 153
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 153),
('False', 0, 153);

-- Choices for Question 154
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 154),
('False', 1, 154);

-- Choices for Question 155
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 155),
('False', 1, 155);

-- Choices for Question 156
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 156),
('False', 0, 156);

-- Choices for Question 157
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 157),
('False', 0, 157);

-- Choices for Question 158
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 158),
('False', 1, 158);

-- Choices for Question 159
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 159),
('False', 1, 159);

-- Choices for Question 160
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 160),
('False', 0, 160);



---XML & SQL

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(161, 'What does XML stand for?', 0, 9),
(162, 'Which of the following is a valid XML tag?', 0, 9),
(163, 'What is an XML schema used for?', 0, 9),
(164, 'Which SQL function is used to parse XML data?', 0, 9),
(165, 'What does XSLT stand for?', 0, 9),
(166, 'Which XML standard is used for querying XML data?', 0, 9),
(167, 'What is an XML document root?', 0, 9),
(168, 'How is XML data typically stored in a relational database?', 0, 9),
(169, 'Which SQL keyword is used to interact with XML data in SQL Server?', 0, 9),
(170, 'What is the purpose of an XML namespace?', 0, 9);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(171, 'XML data is always case-sensitive.', 1, 9),
(172, 'An XML document can contain multiple root elements.', 1, 9),
(173, 'XSLT is used to transform XML documents into other formats.', 1, 9),
(174, 'SQL can be used to directly query XML data without any additional tools.', 1, 9),
(175, 'XML Schemas define the structure and data types of XML documents.', 1, 9),
(176, 'An XML element can be self-closing.', 1, 9),
(177, 'SQL Server does not support XML data types.', 1, 9),
(178, 'Namespaces in XML are used to prevent element name conflicts.', 1, 9),
(179, 'XQuery is an XML query language used for querying XML data.', 1, 9),
(180, 'XML data cannot be stored in SQL Server tables.', 1, 9);

-- Choices for Question 161
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Extensible Markup Language', 1, 161),
('Executable Markup Language', 0, 161),
('Extended Markup Language', 0, 161),
('External Markup Language', 0, 161);

-- Choices for Question 162
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('<tag>Content</tag>', 1, 162),
('<tag>Content', 0, 162),
('<tag Content>', 0, 162),
('tag Content</tag>', 0, 162);

-- Choices for Question 163
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To validate XML documents', 1, 163),
('To transform XML data into HTML', 0, 163),
('To query XML data', 0, 163),
('To create XML documents', 0, 163);

-- Choices for Question 164
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('XMLPARSE', 0, 164),
('XMLQUERY', 0, 164),
('XMLTABLE', 1, 164),
('XMLFETCH', 0, 164);

-- Choices for Question 165
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('XML Style Sheets Transformation', 1, 165),
('Extensible Style Language Transformation', 0, 165),
('XML Schema Transformation', 0, 165),
('Extended Style Language Transformation', 0, 165);

-- Choices for Question 166
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('XPath', 1, 166),
('XQuery', 0, 166),
('XSL', 0, 166),
('XSLT', 0, 166);

-- Choices for Question 167
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The root element of an XML document', 1, 167),
('The first tag in an XML document', 0, 167),
('The last tag in an XML document', 0, 167),
('A child element of an XML document', 0, 167);

-- Choices for Question 168
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('As text within a column', 1, 168),
('In a separate XML data type', 0, 168),
('As binary data', 0, 168),
('In a separate table', 0, 168);

-- Choices for Question 169
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('XMLDATA', 0, 169),
('XMLCOLUMN', 0, 169),
('XMLTYPE', 0, 169),
('FOR XML', 1, 169);

-- Choices for Question 170
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To define data types', 0, 170),
('To prevent element name conflicts', 1, 170),
('To validate XML documents', 0, 170),
('To store XML data', 0, 170);

-- Choices for Question 171
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 171),
('False', 0, 171);

-- Choices for Question 172
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 172),
('False', 1, 172);

-- Choices for Question 173
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 173),
('False', 0, 173);

-- Choices for Question 174
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 174),
('False', 1, 174);

-- Choices for Question 175
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 175),
('False', 0, 175);

-- Choices for Question 176
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 176),
('False', 0, 176);

-- Choices for Question 177
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 177),
('False', 1, 177);

-- Choices for Question 178
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 178),
('False', 0, 178);

-- Choices for Question 179
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 179),
('False', 0, 179);

-- Choices for Question 180
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 180),
('False', 1, 180);


---Data Warehouse

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(181, 'What is a Data Warehouse?', 0, 10),
(182, 'Which process is used to extract, transform, and load data?', 0, 10),
(183, 'What is the purpose of OLAP?', 0, 10),
(184, 'What does ETL stand for?', 0, 10),
(185, 'What is a fact table?', 0, 10),
(186, 'What is a dimension table?', 0, 10),
(187, 'What is a star schema?', 0, 10),
(188, 'What is a snowflake schema?', 0, 10),
(189, 'What is data mining?', 0, 10),
(190, 'What is a Data Mart?', 0, 10);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(191, 'A Data Warehouse is designed for transactional processing.', 1, 10),
(192, 'ETL processes are used to integrate data from multiple sources.', 1, 10),
(193, 'OLAP stands for Online Analytical Processing.', 1, 10),
(194, 'Fact tables typically contain qualitative data.', 1, 10),
(195, 'Dimension tables store measurements and metrics.', 1, 10),
(196, 'A snowflake schema is more normalized than a star schema.', 1, 10),
(197, 'Data mining is the process of extracting patterns from large datasets.', 1, 10),
(198, 'Data Warehouses are designed for real-time processing.', 1, 10),
(199, 'A Data Mart is a subset of a Data Warehouse.', 1, 10),
(200, 'ETL is used to archive data in a Data Warehouse.', 1, 10);

-- Choices for Question 181
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A system for transaction processing', 0, 181),
('A system for storing large volumes of historical data', 1, 181),
('A tool for data visualization', 0, 181),
('A process for data extraction', 0, 181);

-- Choices for Question 182
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('OLAP', 0, 182),
('ETL', 1, 182),
('Data Mining', 0, 182),
('Data Warehousing', 0, 182);

-- Choices for Question 183
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To manage real-time transactions', 0, 183),
('To analyze and report on historical data', 1, 183),
('To create data visualizations', 0, 183),
('To extract and load data', 0, 183);

-- Choices for Question 184
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Extract, Transform, Load', 1, 184),
('Extract, Transfer, Load', 0, 184),
('Extract, Transform, Link', 0, 184),
('Enhance, Transform, Load', 0, 184);

-- Choices for Question 185
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A table storing transactional data', 0, 185),
('A table storing metrics and measurements', 1, 185),
('A table used for data extraction', 0, 185),
('A table used for data transformation', 0, 185);

-- Choices for Question 186
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A table storing metrics and measurements', 0, 186),
('A table containing descriptive data about dimensions', 1, 186),
('A table used for data extraction', 0, 186),
('A table used for data transformation', 0, 186);

-- Choices for Question 187
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A schema with normalized data', 0, 187),
('A schema with denormalized data', 1, 187),
('A schema with real-time data', 0, 187),
('A schema with transactional data', 0, 187);

-- Choices for Question 188
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A schema with denormalized data', 0, 188),
('A schema with normalized data', 1, 188),
('A schema with real-time data', 0, 188),
('A schema with transactional data', 0, 188);

-- Choices for Question 189
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The process of integrating data from multiple sources', 0, 189),
('The process of extracting patterns from data', 1, 189),
('The process of cleaning data', 0, 189),
('The process of storing data', 0, 189);

-- Choices for Question 190
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A small, subject-oriented database', 1, 190),
('A large, enterprise-wide database', 0, 190),
('A tool for data extraction', 0, 190),
('A process for data transformation', 0, 190);

-- Choices for Question 191
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 191),
('False', 0, 191);

-- Choices for Question 192
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 192),
('False', 0, 192);

-- Choices for Question 193
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 193),
('False', 0, 193);

-- Choices for Question 194
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 194),
('False', 1, 194);

-- Choices for Question 195
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 195),
('False', 1, 195);

-- Choices for Question 196
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 196),
('False', 0, 196);

-- Choices for Question 197
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 197),
('False', 0, 197);

-- Choices for Question 198
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 198),
('False', 1, 198);

-- Choices for Question 199
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 199),
('False', 0, 199);

-- Choices for Question 200
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 200),
('False', 1, 200);

-- Insert Questions for System Architecture Design (Course_ID: 11)
-- MCQ Questions (Type = 0)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(202, 'What is the primary goal of system architecture design?', 0, 11),
(203, 'Which of the following is a key component of system architecture?', 0, 11),
(204, 'What does scalability refer to in system design?', 0, 11),
(205, 'Which of the following is an example of a distributed system?', 0, 11),
(206, 'What is the purpose of load balancing in system architecture?', 0, 11),
(207, 'Which type of architecture separates applications into front-end and back-end?', 0, 11),
(208, 'What does fault tolerance mean in system design?', 0, 11),
(209, 'Which architectural style is most commonly used for web applications?', 0, 11),
(210, 'What is an API gateway in microservices architecture?', 0, 11),
(211, 'Which of the following is a key principle of microservices architecture?', 0, 11);

-- True/False Questions (Type = 1)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(212, 'System architecture design involves defining the structure of a system.', 1, 11),
(213, 'Scalability is about a system’s ability to handle increasing workloads.', 1, 11),
(214, 'Monolithic architecture is a type of distributed system architecture.', 1, 11),
(215, 'Fault tolerance allows a system to continue operating even when some components fail.', 1, 11),
(216, 'In a client-server model, the server provides resources and services to clients.', 1, 11),
(217, 'Microservices architecture promotes building an application as a single unit.', 1, 11),
(218, 'High availability means that a system is rarely operational.', 1, 11),
(219, 'Load balancers distribute network traffic across multiple servers.', 1, 11),
(220, 'In system design, latency refers to the delay before data transfer begins.', 1, 11),
(221, 'A service-oriented architecture (SOA) is built on the concept of microservices.', 1, 11);

-- Insert Choices for System Architecture Design (MCQ Questions related to Course_ID: 11)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 202
('To ensure system performance', 1, 202),
('To create user interfaces', 0, 202),
('To manage data storage', 0, 202),
-- Question_ID 203
('Database', 1, 203),
('Color scheme', 0, 203),
('Fonts', 0, 203),
-- Question_ID 204
('A system’s ability to grow with demand', 1, 204),
('A system’s ability to shrink resources', 0, 204),
('A system’s ability to maintain data', 0, 204),
-- Question_ID 205
('Client-server architecture', 1, 205),
('Single-user system', 0, 205),
('Monolithic system', 0, 205),
-- Question_ID 206
('To distribute workloads across multiple resources', 1, 206),
('To enhance security', 0, 206),
('To manage databases', 0, 206),
-- Question_ID 207
('Two-tier architecture', 1, 207),
('Single-tier architecture', 0, 207),
('Peer-to-peer architecture', 0, 207),
-- Question_ID 208
('The ability to operate during failures', 1, 208),
('The ability to prevent failures', 0, 208),
('The ability to restart after a failure', 0, 208),
-- Question_ID 209
('RESTful architecture', 1, 209),
('Single-layer architecture', 0, 209),
('Command-line architecture', 0, 209),
-- Question_ID 210
('A gateway that routes requests to different microservices', 1, 210),
('A database management system', 0, 210),
('A security protocol', 0, 210),
-- Question_ID 211
('Services are independent and loosely coupled', 1, 211),
('All services are tightly integrated', 0, 211),
('Services share a common database', 0, 211);

-- Insert Choices for System Architecture Design (True/False Questions related to Course_ID: 11)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 212
('True', 1, 212),
('False', 0, 212),
-- Question_ID 213
('True', 1, 213),
('False', 0, 213),
-- Question_ID 214
('True', 0, 214),
('False', 1, 214),
-- Question_ID 215
('True', 1, 215),
('False', 0, 215),
-- Question_ID 216
('True', 1, 216),
('False', 0, 216),
-- Question_ID 217
('True', 0, 217),
('False', 1, 217),
-- Question_ID 218
('True', 0, 218),
('False', 1, 218),
-- Question_ID 219
('True', 1, 219),
('False', 0, 219),
-- Question_ID 220
('True', 1, 220),
('False', 0, 220),
-- Question_ID 221
('True', 0, 221),
('False', 1, 221);

-- Insert Questions for Software Testing (Course_ID: 12)
-- MCQ Questions (Type = 0)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(222, 'What is the main goal of software testing?', 0, 12),
(223, 'Which of the following is a type of software testing?', 0, 12),
(224, 'What is regression testing?', 0, 12),
(225, 'Which of the following is an example of functional testing?', 0, 12),
(226, 'What is the purpose of unit testing?', 0, 12),
(227, 'Which testing phase is conducted by end-users?', 0, 12),
(228, 'What is the difference between black-box and white-box testing?', 0, 12),
(229, 'Which type of testing ensures that a system meets its requirements?', 0, 12),
(230, 'What is a key characteristic of automated testing?', 0, 12),
(231, 'Which of the following best describes smoke testing?', 0, 12);

-- True/False Questions (Type = 1)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(232, 'The primary goal of software testing is to find and fix bugs.', 1, 12),
(233, 'Unit testing is typically performed at the end of the software development lifecycle.', 1, 12),
(234, 'Black-box testing involves knowledge of the internal code structure.', 1, 12),
(235, 'Regression testing ensures that new changes do not break existing functionality.', 1, 12),
(236, 'User Acceptance Testing (UAT) is performed by developers.', 1, 12),
(237, 'Integration testing checks the interaction between different system modules.', 1, 12),
(238, 'Functional testing focuses on the system\s user interface.', 1, 12),
(239, 'Load testing measures how the system performs under stress.', 1, 12),
(240, 'Automated testing eliminates the need for manual testing.', 1, 12),
(241, 'In software testing, test cases are written based on user requirements.', 1, 12);

-- Insert Choices for Software Testing (MCQ Questions related to Course_ID: 12)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 222
('To ensure software quality', 1, 222),
('To increase software complexity', 0, 222),
('To design user interfaces', 0, 222),
-- Question_ID 223
('Unit Testing', 1, 223),
('Database Testing', 0, 223),
('User Interface Testing', 0, 223),
-- Question_ID 224
('Testing previously working functionality', 1, 224),
('Testing the entire system', 0, 224),
('Testing only new features', 0, 224),
-- Question_ID 225
('System Testing', 1, 225),
('Performance Testing', 0, 225),
('Security Testing', 0, 225),
-- Question_ID 226
('To test individual components', 1, 226),
('To test system performance', 0, 226),
('To test security vulnerabilities', 0, 226),
-- Question_ID 227
('User Acceptance Testing (UAT)', 1, 227),
('Integration Testing', 0, 227),
('Regression Testing', 0, 227),
-- Question_ID 228
('Black-box tests software without internal knowledge', 1, 228),
('White-box tests software without internal knowledge', 0, 228),
('Both are the same', 0, 228),
-- Question_ID 229
('Acceptance Testing', 1, 229),
('Exploratory Testing', 0, 229),
('Non-functional Testing', 0, 229),
-- Question_ID 230
('Repeats tests manually', 1, 230),
('Increases bugs', 0, 230),
('Ensures quality', 0, 230),
-- Question_ID 231
('Verifies basic functionality works', 1, 231),
('Tests detailed design', 0, 231),
('Checks security flaws', 0, 231);

-- Insert Choices for Software Testing (True/False Questions related to Course_ID: 12)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 232
('True', 1, 232),
('False', 0, 232),
-- Question_ID 233
('True', 0, 233),
('False', 1, 233),
-- Question_ID 234
('True', 0, 234),
('False', 1, 234),
-- Question_ID 235
('True', 1, 235),
('False', 0, 235),
-- Question_ID 236
('True', 0, 236),
('False', 1, 236),
-- Question_ID 237
('True', 1, 237),
('False', 0, 237),
-- Question_ID 238
('True', 0, 238),
('False', 1, 238),
-- Question_ID 239
('True', 1, 239),
('False', 0, 239),
-- Question_ID 240
('True', 0, 240),
('False', 1, 240),
-- Question_ID 241
('True', 1, 241),
('False', 0, 241);


-- Insert Questions for Object-Oriented Programming (Course_ID: 13)
-- MCQ Questions (Type = 0)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(242, 'Which concept of OOP refers to bundling data and methods together?', 0, 13),
(243, 'What is inheritance in OOP?', 0, 13),
(244, 'Which OOP concept allows objects to take on multiple forms?', 0, 13),
(245, 'What does encapsulation in OOP protect?', 0, 13),
(246, 'Which OOP principle promotes code reuse?', 0, 13),
(247, 'What is polymorphism in OOP?', 0, 13),
(248, 'Which access modifier allows visibility within the same class only?', 0, 13),
(249, 'What is an object in OOP?', 0, 13),
(250, 'Which of the following is an example of a class in OOP?', 0, 13),
(251, 'What is the purpose of a constructor in OOP?', 0, 13);

-- True/False Questions (Type = 1)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(252, 'Encapsulation helps to hide the internal state of an object.', 1, 13),
(253, 'Polymorphism allows an object to be treated as instances of different classes.', 1, 13),
(254, 'Inheritance allows a class to inherit properties and behaviors from another class.', 1, 13),
(255, 'An interface in OOP is a type of class.', 1, 13),
(256, 'Abstraction in OOP focuses on hiding complex implementation details.', 1, 13),
(257, 'In OOP, a method is a function defined within a class.', 1, 13),
(258, 'A constructor is used to initialize an object when it is created.', 1, 13),
(259, 'Objects in OOP are instances of classes.', 1, 13),
(260, 'Inheritance in OOP means that a subclass can access private members of the superclass.', 1, 13),
(261, 'Encapsulation allows direct access to the internal state of an object from outside the class.', 1, 13);

-- Insert Choices for Object-Oriented Programming (MCQ Questions related to Course_ID: 13)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 242
('Encapsulation', 1, 242),
('Inheritance', 0, 242),
('Abstraction', 0, 242),
-- Question_ID 243
('The ability to create a new class from an existing class', 1, 243),
('The ability to hide data within a class', 0, 243),
('The ability to define a method', 0, 243),
-- Question_ID 244
('Polymorphism', 1, 244),
('Inheritance', 0, 244),
('Encapsulation', 0, 244),
-- Question_ID 245
('The internal state of an object', 1, 245),
('The external behavior of an object', 0, 245),
('The inheritance hierarchy', 0, 245),
-- Question_ID 246
('Inheritance', 1, 246),
('Polymorphism', 0, 246),
('Encapsulation', 0, 246),
-- Question_ID 247
('The ability to perform different tasks using the same method', 1, 247),
('The ability to define classes', 0, 247),
('The ability to manage access control', 0, 247),
-- Question_ID 248
('Private', 1, 248),
('Protected', 0, 248),
('Public', 0, 248),
-- Question_ID 249
('An instance of a class', 1, 249),
('A blueprint for a method', 0, 249),
('A function in a program', 0, 249),
-- Question_ID 250
('A blueprint for creating objects', 1, 250),
('A variable', 0, 250),
('A method', 0, 250),
-- Question_ID 251
('To initialize an object', 1, 251),
('To destroy an object', 0, 251),
('To create a class', 0, 251);

-- Insert Choices for Object-Oriented Programming (True/False Questions related to Course_ID: 13)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 252
('True', 1, 252),
('False', 0, 252),
-- Question_ID 253
('True', 1, 253),
('False', 0, 253),
-- Question_ID 254
('True', 1, 254),
('False', 0, 254),
-- Question_ID 255
('True', 0, 255),
('False', 1, 255),
-- Question_ID 256
('True', 1, 256),
('False', 0, 256),
-- Question_ID 257
('True', 1, 257),
('False', 0, 257),
-- Question_ID 258
('True', 1, 258),
('False', 0, 258),
-- Question_ID 259
('True', 1, 259),
('False', 0, 259),
-- Question_ID 260
('True', 0, 260),
('False', 1, 260),
-- Question_ID 261
('True', 0, 261),
('False', 1, 261);

-- Insert Questions for Agile (Course_ID: 14)
-- MCQ Questions (Type = 0)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(262, 'What is the primary focus of Agile methodology?', 0, 14),
(263, 'Which Agile framework uses sprints to manage work?', 0, 14),
(264, 'What is a user story in Agile?', 0, 14),
(265, 'Which role is responsible for maximizing the value of the product in Scrum?', 0, 14),
(266, 'What is a Scrum Masters main responsibility?', 0, 14),
(267, 'Which Agile practice involves continuous integration and delivery?', 0, 14),
(268, 'What is a product backlog in Agile?', 0, 14),
(269, 'Which Agile principle emphasizes customer collaboration?', 0, 14),
(270, 'What does the term "iteration" refer to in Agile?', 0, 14),
(271, 'What is a burn-down chart used for in Agile?', 0, 14);

-- True/False Questions (Type = 1)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(272, 'Agile emphasizes flexible responses to change.', 1, 14),
(273, 'Scrum is a framework used in Agile methodologies.', 1, 14),
(274, 'A sprint in Agile is typically one month long.', 1, 14),
(275, 'The Product Owner is responsible for managing the development team.', 1, 14),
(276, 'Agile promotes delivering working software frequently.', 1, 14),
(277, 'The Agile Manifesto prioritizes individuals and interactions over processes and tools.', 1, 14),
(278, 'Continuous feedback is a key element in Agile methodologies.', 1, 14),
(279, 'Scrum Masters assign tasks to team members.', 1, 14),
(280, 'Agile focuses on comprehensive documentation.', 1, 14),
(281, 'In Agile, the customer is involved throughout the project.', 1, 14);

-- Insert Choices for Agile (MCQ Questions related to Course_ID: 14)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 262
('Delivering working software quickly', 1, 262),
('Detailed project documentation', 0, 262),
('Strict adherence to processes', 0, 262),
-- Question_ID 263
('Scrum', 1, 263),
('Kanban', 0, 263),
('XP (Extreme Programming)', 0, 263),
-- Question_ID 264
('A description of a feature from an end-user perspective', 1, 264),
('A detailed technical specification', 0, 264),
('A project management tool', 0, 264),
-- Question_ID 265
('Product Owner', 1, 265),
('Scrum Master', 0, 265),
('Development Team', 0, 265),
-- Question_ID 266
('Facilitating the Scrum process', 1, 266),
('Managing the development team', 0, 266),
('Writing user stories', 0, 266),
-- Question_ID 267
('DevOps', 1, 267),
('Waterfall', 0, 267),
('Lean', 0, 267),
-- Question_ID 268
('A prioritized list of features and requirements', 1, 268),
('A team meeting agenda', 0, 268),
('A test plan', 0, 268),
-- Question_ID 269
('Customer collaboration over contract negotiation', 1, 269),
('Following a plan over responding to change', 0, 269),
('Comprehensive documentation over working software', 0, 269),
-- Question_ID 270
('A time-boxed period to develop features', 1, 270),
('A phase of the project lifecycle', 0, 270),
('A planning meeting', 0, 270),
-- Question_ID 271
('Tracking progress of work during a sprint', 1, 271),
('Estimating project costs', 0, 271),
('Monitoring team performance', 0, 271);

-- Insert Choices for Agile (True/False Questions related to Course_ID: 14)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 272
('True', 1, 272),
('False', 0, 272),
-- Question_ID 273
('True', 1, 273),
('False', 0, 273),
-- Question_ID 274
('True', 0, 274),
('False', 1, 274),
-- Question_ID 275
('True', 0, 275),
('False', 1, 275),
-- Question_ID 276
('True', 1, 276),
('False', 0, 276),
-- Question_ID 277
('True', 1, 277),
('False', 0, 277),
-- Question_ID 278
('True', 1, 278),
('False', 0, 278),
-- Question_ID 279
('True', 0, 279),
('False', 1, 279),
-- Question_ID 280
('True', 0, 280),
('False', 1, 280),
-- Question_ID 281
('True', 1, 281),
('False', 0, 281);

-- Insert Questions for DevOps (Course_ID: 15)
-- MCQ Questions (Type = 0)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(282, 'What is the primary goal of DevOps?', 0, 15),
(283, 'Which of the following is a popular DevOps tool for continuous integration?', 0, 15),
(284, 'What does "Infrastructure as Code" (IaC) refer to in DevOps?', 0, 15),
(285, 'Which practice is essential for automating deployments in DevOps?', 0, 15),
(286, 'What does CI/CD stand for?', 0, 15),
(287, 'Which DevOps practice focuses on collaboration between development and operations teams?', 0, 15),
(288, 'What is the purpose of a version control system in DevOps?', 0, 15),
(289, 'Which of the following is an example of a configuration management tool?', 0, 15),
(290, 'What does containerization in DevOps enable?', 0, 15),
(291, 'Which tool is commonly used for container orchestration in DevOps?', 0, 15);

-- True/False Questions (Type = 1)
INSERT INTO Question (Question_ID, Question, Type, Course_Id)
VALUES
(292, 'DevOps promotes continuous testing and delivery.', 1, 15),
(293, 'CI/CD pipelines are used to automate the software release process.', 1, 15),
(294, 'Infrastructure as Code (IaC) allows manual configuration of servers.', 1, 15),
(295, 'Version control systems are used to track changes in code.', 1, 15),
(296, 'DevOps focuses only on automation and not on collaboration.', 1, 15),
(297, 'Containers provide a lightweight environment to run applications.', 1, 15),
(298, 'Continuous monitoring in DevOps helps in identifying issues early.', 1, 15),
(299, 'Jenkins is an example of a version control system.', 1, 15),
(300, 'DevOps tools are primarily used for frontend development.', 1, 15),
(301, 'DevOps integrates development and operations for faster delivery of software.', 1, 15);

-- Insert Choices for DevOps (MCQ Questions related to Course_ID: 15)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 282
('To integrate development and operations for faster delivery', 1, 282),
('To write code more efficiently', 0, 282),
('To create user-friendly interfaces', 0, 282),
-- Question_ID 283
('Jenkins', 1, 283),
('Photoshop', 0, 283),
('WordPress', 0, 283),
-- Question_ID 284
('Managing infrastructure through code', 1, 284),
('Writing code to automate UI design', 0, 284),
('Using code to create marketing strategies', 0, 284),
-- Question_ID 285
('Continuous Deployment', 1, 285),
('Manual Testing', 0, 285),
('Code Documentation', 0, 285),
-- Question_ID 286
('Continuous Integration/Continuous Delivery', 1, 286),
('Code Innovation/Code Deployment', 0, 286),
('Customer Interaction/Client Deployment', 0, 286),
-- Question_ID 287
('Collaboration between development and operations teams', 1, 287),
('Focusing only on development', 0, 287),
('Ignoring operations', 0, 287),
-- Question_ID 288
('Tracking and managing changes in code', 1, 288),
('Creating user interfaces', 0, 288),
('Deploying applications to production', 0, 288),
-- Question_ID 289
('Ansible', 1, 289),
('Photoshop', 0, 289),
('Google Analytics', 0, 289),
-- Question_ID 290
('Packaging and running applications in isolated environments', 1, 290),
('Designing user interfaces', 0, 290),
('Testing code manually', 0, 290),
-- Question_ID 291
('Kubernetes', 1, 291),
('Photoshop', 0, 291),
('Google Docs', 0, 291);

-- Insert Choices for DevOps (True/False Questions related to Course_ID: 15)
INSERT INTO Choices (Choice, Right_choice, Question_ID)
VALUES
-- Question_ID 292
('True', 1, 292),
('False', 0, 292),
-- Question_ID 293
('True', 1, 293),
('False', 0, 293),
-- Question_ID 294
('True', 0, 294),
('False', 1, 294),
-- Question_ID 295
('True', 1, 295),
('False', 0, 295),
-- Question_ID 296
('True', 0, 296),
('False', 1, 296),
-- Question_ID 297
('True', 1, 297),
('False', 0, 297),
-- Question_ID 298
('True', 1, 298),
('False', 0, 298),
-- Question_ID 299
('True', 0, 299),
('False', 1, 299),
-- Question_ID 300
('True', 0, 300),
('False', 1, 300),
-- Question_ID 301
('True', 1, 301),
('False', 0, 301);


INSERT INTO Question (Question_ID, Question, Type, Course_ID)
VALUES
  -- Cloud Computing (Course_ID = 16) MCQ
  (304,'What is cloud computing?', 0, 16),
  (305,'Which of the following is NOT a benefit of cloud computing?', 0, 16),
  (306,'Which cloud service model provides software applications to users over the internet?', 0, 16),
  (307,'Which cloud deployment model involves sharing resources among multiple organizations?', 0, 16),
  (308,'What is the term for the ability of a cloud system to scale up or down to meet changing demands?', 0, 16),
  (309,'Which of the following is NOT a core cloud service?MCQ Question 2 for Cloud Computing', 0, 16),
  (310,'What is the primary benefit of using cloud storage?', 0, 16),
  (311,'Which cloud service model is best suited for developing and deploying web applications?', 0, 16),
  (312,'Which type of cloud storage is best suited for storing large amounts of unstructured data?', 0, 16),
  (313,'What is the primary function of a load balancer in cloud computing?', 0, 16),

  -- Cloud Computing (Course_ID = 16) True / False
  (314,'IaaS provides infrastructure as a service, including servers, storage, and networking.', 1, 16),
  (315,'Cloud storage reduces the need for physical storage devices.', 1, 16),
  (316,'PaaS is suitable for developing and deploying web applications without managing infrastructure.', 1, 16),
  (317,'Cloud-based virtual machines are more expensive than on-premises servers.', 1, 16),
  (318,'Object storage is best for storing large amounts of unstructured data.', 1, 16),
  (319,'Load balancers distribute network traffic across multiple servers.', 1, 16),
  (320,'Cloud-based databases are always more secure than on-premises databases.', 1, 16),
  (321,'Virtual machines can be created and terminated on demand in the cloud.', 1, 16),
  (322,'Content Delivery Networks (CDNs) improve website performance.', 1, 16),
  (323,'Block storage is suitable for storing operating systems and applications.', 1, 16),

  -- Azure (Course_ID = 17) MCQ
  (324,'What is the fundamental building block of Azure resources?', 0, 17),
  (325,'Which Azure service provides Infrastructure as a Service (IaaS)?', 0, 17),
  (326,'What is the primary use of Azure Storage Accounts?', 0, 17),
  (327,'Which Azure service is used for serverless computing?', 0, 17),
  (328,'What is Azure Active Directory used for?', 0, 17),
  (329,'Which Azure service is used for building and deploying web applications?', 0, 17),
  (330,'What is the purpose of Azure Resource Manager?', 0, 17),
  (331,'Which Azure service provides Platform as a Service (PaaS)?', 0, 16),
  (332,'What is Azure Blob Storage used for?', 0, 17),
  (333,'Which Azure service is used for monitoring and managing Azure resources?', 0, 17),

  -- Azure (Course_ID = 17) True / False
  (334,'Azure is a public cloud platform.', 1, 17),
  (335,'Azure Resource Manager is used for managing Azure subscriptions.', 1, 17),
  (336,'Azure Virtual Machines provide Infrastructure as a Service (IaaS)', 1, 17),
  (337,'Azure App Service is used for building and deploying web applications.', 1, 17),
  (338,'Azure Storage is used for storing structured data only.', 1, 17),
  (339,'Azure Functions is a serverless computing service.', 1, 17),
  (340,'Azure Active Directory is used for managing user identities and access.', 1, 17),
  (341,'Azure SQL Database is a fully managed relational database service.', 1, 17),
  (342,'Azure Key Vault is used for storing secrets and cryptographic keys.', 1, 17),
  (343,'Azure Monitor provides insights into the performance and health of Azure resources.', 1, 17),

  -- Linux (Course_ID = 18) MCQ
  (344,'Which of the following is the kernel of the Linux operating system?', 0, 18),
  (345,'What is the default shell in most Linux distributions?', 0, 18),
  (346,'Which command is used to list files and directories in long format?', 0, 18),
  (347,'What is the purpose of the cd command in Linux?', 0, 18),
  (348,'Which command is used to create a new directory?', 0, 18),
  (349,'What is the root directory in Linux represented by?', 0, 18),
  (350,'Which command is used to view the contents of a file?', 0, 18),
  (351,'What is the purpose of the chmod command?', 0, 18),
  (352,'Which command is used to search for files based on their contents?', 0, 18),
  (353,'What is the purpose of the ps command?', 0, 18),

  -- Linux (Course_ID = 18) True / False
  (354,'The Linux kernel is open-source software.', 1, 18),
  (355,'Bash is a command-line interpreter.', 1, 18),
  (356,'The rm command is used to create files.', 1, 18),
  (357,'The cp command is used to copy files and directories.', 1, 18),
  (358,'The mv command is used to move or rename files and directories.', 1, 18),
  (359,'The ~ symbol represents the home directory of the current user.', 1, 18),
  (360,'The sudo command is used to execute commands with root privileges.', 1, 18),
  (361,'The man command is used to view online help for commands.', 1, 18),
  (362,'The kill command is used to terminate running processes.', 1, 18),
  (363,'Linux supports multitasking and multi-user environments.', 1, 18),

   -- Networking (Course_ID = 19) MCQ
  (364,'What is the basic unit of data in a network?', 0, 19),
  (365,'Which layer of the OSI model is responsible for routing packets between networks?', 0, 19),
  (366,'What is the primary function of a router?', 0, 19),
  (367,'Which protocol is used to transmit web pages?', 0, 19),
  (368,'What is the purpose of a subnet mask?', 0, 19),
  (369,'Which network topology is most susceptible to failures?', 0, 19),
  (370,'What is the function of a DHCP server?', 0, 19),
  (371,'Which protocol is used for email transmission?', 0, 19),
  (372,'What is the purpose of a firewall?', 0, 19),
  (373,'Which network device operates at the Data Link layer of the OSI model?', 0, 19),

  -- Networking (Course_ID = 19) True / False
  (374,'Ethernet is a type of network cable.', 1, 19),
  (375,'TCP is a connectionless protocol.', 1, 19),
  (376,'A hub is a network device that amplifies network signals.', 1, 19),
  (377,'DNS is used to resolve IP addresses to domain names.', 1, 19),
  (378,'A subnet is a division of a larger network.', 1, 19),
  (379,'A MAC address is a unique identifier assigned to a network interface.', 1, 19),
  (380,'UDP is a connection-oriented protocol. ', 1, 19),
  (381,'A switch can forward data to specific devices on a network.', 1, 19),
  (382,'A router operates at the Physical layer of the OSI model.', 1, 19),
  (383,'A network topology describes the physical arrangement of network devices.', 1, 19),

     -- Devops and Cloud (Course_ID = 20) MCQ
  (384,'What is the primary goal of DevOps?', 0, 20),
  (385,'Which of the following is NOT a core DevOps practice?', 0, 20),
  (386,'What is a key benefit of Infrastructure as Code (IaC)?', 0, 20),
  (387,'Which tool is commonly used for version control in DevOps?', 0, 20),
  (388,'What is the purpose of Continuous Integration (CI)?', 0, 20),
  (389,'Which of the following is a popular configuration management tool?', 0, 20),
  (390,'What is the role of a container orchestration platform?', 0, 20),
  (391,'Which cloud service model is most commonly used in DevOps environments?', 0, 20),
  (392,'What is the purpose of a DevOps pipeline?', 0, 20),
  (393,'Which of the following is NOT a DevOps cultural value?', 0, 20),

  -- Devops and Cloud (Course_ID = 20) True / False
  (394,'DevOps aims to shorten the development lifecycle while increasing software quality. ', 1, 20),
  (395,'Infrastructure as Code (IaC) treats infrastructure as code, enabling version control and automation.', 1, 20),
  (396,'Continuous Delivery is the practice of automatically deploying code to production.', 1, 20),
  (397,'Docker is a containerization platform. ', 1, 20),
  (398,'Kubernetes is an orchestration tool for Docker containers.', 1, 20),
  (399,'DevOps emphasizes a culture of blame and accountability.', 1, 20),
  (400,'Cloud computing is essential for DevOps practices.', 1, 20),
  (401,'Monitoring and logging are crucial components of a DevOps pipeline.', 1, 20),
  (402,'DevOps teams should have a strong focus on automation.', 1, 20),
  (403,'The goal of DevOps is to achieve faster time-to-market without compromising quality.', 1, 20);



INSERT INTO Choices (Choice, Right_Choice, Question_ID)
VALUES
	-- Cloud Computing MCQ
	('A) A type of computer', 0, 304),
	('B) A way to store data on the internet', 0, 304),
	('C) A model for enabling ubiquitous, convenient, on-demand network access to a shared pool', 1, 304),
	('A) Increased scalability', 0, 305),
	('B) Reduced costs', 0, 305),
	('C) Increased dependency on internet connection', 1, 305),
	('A) IaaS', 0, 306),
	('B) PaaS', 0, 306),
	('C) SaaS', 1, 306),
	('A) Public cloud', 0, 307),
	('B) Private cloud', 0, 307),
	('C) Hybrid cloud', 1, 307),
	('A) Elasticity', 1, 308),
	('B) Agility', 0, 308),
	('C) Flexibility', 0, 308),
	('A) Storage', 0, 309),
	('B) Networking', 0, 309),
	('C) Operating system', 1, 309),
	('A) Increased data security', 0, 310),
	('B) Reduced hardware costs', 0, 310),
	('C) Improved data accessibility', 1, 310),
	('A) IaaS', 0, 311),
	('B) PaaS', 0, 311),
	('C) SaaS', 1, 311),
	('A) Object storage', 1, 312),
	('B) Block storage', 0, 312),
	('C) File storage', 0, 312),
	('A) Storing data', 0, 313),
	('B) Distributing network traffic', 1, 313),
	('C) Running virtual machines', 0, 313),

	-- Cloud Computing True / False
	('True', 1, 314),
	('False', 0, 314),
	('True', 1, 315),
	('False', 0, 315),
	('True', 1, 316),
	('False', 0, 316),
	('True', 0, 317),
	('False', 1, 317),
	('True', 1, 318),
	('False', 0, 318),
	('True', 1, 319),
	('False', 0, 319),
	('True', 0, 320),
	('False', 1, 320),
	('True', 1, 321),
	('False', 0, 321),
	('True', 1, 322),
	('False', 0, 322),
	('True', 0, 323),
	('False', 1, 323),

	-- Azure MCQ
	('A) Resource groups', 1, 324),
	('B) Subscriptions', 0, 324),
	('C) Resource managers', 0, 324),
	('A) Azure App Service', 0, 325),
	('B) Azure Virtual Machines', 1, 325),
	('C) Azure SQL Database', 0, 325),
	('A) Storing and managing data', 1, 326),
	('B) Running virtual machines', 0, 326),
	('C) Creating virtual networks', 0, 326),
	('A) Azure Functions', 1, 327),
	('B) Azure App Service', 0, 327),
	('C) Azure Virtual Machines', 0, 327),
	('A) Identity and access management', 1, 328),
	('B) Data storage', 0, 328),
	('C) Network security', 0, 328),
	('A) Azure App Service', 1, 329),
	('B) Azure Virtual Machines', 0, 329),
	('C) Azure SQL Database', 0, 329),
	('A) To manage and deploy Azure resources', 1, 330),
	('B) To store data in Azure', 0, 330),
	('C) To create virtual networks', 0, 330),
	('A) Azure Virtual Machines', 0, 331),
	('B) Azure App Service', 1, 331),
	('C) Azure Storage', 0, 331),
	('A) Storing unstructured data', 1, 332),
	('B) Running databases', 0, 332),
	('C) Hosting virtual machines', 0, 332),
	('A) Azure Monitor', 1, 333),
	('B) Azure Security Center', 0, 333),
	('C) Azure Key Vault', 0, 333),

	-- Azure True / False
	('True', 1, 334),
	('False', 0, 334),
	('True', 1, 335),
	('False', 0, 335),
	('True', 1, 336),
	('False', 0, 336),
	('True', 1, 337),
	('False', 0, 337),
	('True', 0, 338),
	('False', 1, 338),
	('True', 1, 339),
	('False', 0, 339),
	('True', 1, 340),
	('False', 0, 340),
	('True', 1, 341),
	('False', 0, 341),
	('True', 1, 342),
	('False', 0, 342),
	('True', 1, 343),
	('False', 0, 343),

	-- Linux MCQ
	('A) Bash', 0, 344),
	('B) GNU', 0, 344),
	('C) Linux Kerne', 1, 344),
	('A) csh', 0, 345),
	('B) ksh', 0, 345),
	('C) bash', 1, 345),
	('A) Thief', 0, 346),
	('B) For girls', 1, 346),
	('C) No', 0, 346),
	('A) To create a directory', 0, 347),
	('B) To change directory', 1, 347),
	('C) To copy a file', 0, 347),
	('A) Upset', 1, 348),
	('B) mkcd', 0, 348),
	('C) makedi', 0, 348),
	('A) /', 1, 349),
	('B) ..', 0, 349),
	('C) ~', 0, 349),
	('A) cat', 0, 350),
	('B) More', 0, 350),
	('C) Both A and B', 1, 350),
	('A) To change file permissions', 1, 351),
	('B) To change file ownership', 0, 351),
	('C) To change file location', 0, 351),
	('A) find', 0, 352),
	('B) grep', 1, 352),
	('C) locate', 0, 352),
	('A) To display running processes', 1, 353),
	('B) To kill processes', 0, 353),
	('C) To create processes', 0, 353),

	-- Linux True / False
	('True', 1, 354),
	('False', 0, 354),
	('True', 1, 355),
	('False', 0, 355),
	('True', 0, 356),
	('False', 1, 356),
	('True', 1, 357),
	('False', 0, 357),
	('True', 1, 358),
	('False', 0, 358),
	('True', 1, 359),
	('False', 0, 359),
	('True', 1, 360),
	('False', 0, 360),
	('True', 1, 361),
	('False', 0, 361),
	('True', 1, 362),
	('False', 0, 362),
	('True', 1, 363),
	('False', 0, 363),

	-- Networking MCQ
	('A) Bit', 0, 364),
	('B) Byte', 0, 364),
	('C) Packet', 1, 364),
	('A) Network layer', 1, 365),
	('B) Data link layer', 0, 365),
	('C) Transport layer', 0, 365),
	('A) Amplify network signals', 0, 366),
	('B) Connect devices within a network', 0, 366),
	('C) Forward packets between networks', 1, 366),
	('A) FTP', 0, 367),
	('B) HTTP', 1, 367),
	('C) SMTP', 0, 367),
	('A) To identify the network address', 1, 368),
	('B) To identify the host address', 0, 368),
	('C) To identify the broadcast address', 0, 368),
	('A) Star', 0, 369),
	('B) Bus', 1, 369),
	('C) Ring', 0, 369),
	('A) Assign IP addresses to devices', 1, 370),
	('B) Resolve domain names to IP addresses', 0, 370),
	('C) Filter network traffic', 0, 370),
	('A) HTTP', 0, 371),
	('B) SMTP', 1, 371),
	('C) FTP', 0, 371),
	('A) To protect a network from unauthorized access', 1, 372),
	('B) To increase network speed', 0, 372),
	('C) To improve network performance', 0, 372),
	('A) Router', 0, 373),
	('B) Switch', 1, 373),
	('C) Modem', 0, 373),

	-- Networking True / False
	('True', 1, 374),
	('False', 0, 374),
	('True', 0, 375),
	('False', 1, 375),
	('True', 1, 376),
	('False', 0, 376),
	('True', 1, 377),
	('False', 0, 377),
	('True', 1, 378),
	('False', 0, 378),
	('True', 1, 379),
	('False', 0, 379),
	('True', 0, 380),
	('False', 1, 380),
	('True', 1, 381),
	('False', 0, 381),
	('True', 0, 382),
	('False', 1, 382),
	('True', 1, 383),
	('False', 0, 383),

	-- Devops and Cloud MCQ
	('A) To increase the speed and frequency of software delivery', 1, 384),
	('B) To improve communication between developers and testers', 0, 384),
	('C) To reduce infrastructure costs', 0, 384),
	('A) Continuous Integration', 0, 385),
	('B) Continuous Delivery', 0, 385),
	('C) Continuous Marketing', 1, 385),
	('A) Increased manual configuration', 0, 386),
	('B) Improved consistency and reproducibility', 1, 386),
	('C) Reduced automation', 0, 386),
	('A) Docker', 0, 387),
	('B) Kubernetes', 0, 387),
	('C) Git', 1, 387),
	('A) To integrate code changes into a shared repository frequently', 1, 388),
	('B) To deploy code to production environments', 0, 388),
	('C) To monitor application performance ', 0, 388),
	('A) Ansible', 1, 389),
	('B) Docker', 0, 389),
	('C) Jenkins', 0, 389),
	('A) To manage and deploy containerized applications', 1, 390),
	('B) To build and test software', 0, 390),
	('C) To monitor application performance', 0, 390),
	('A) IaaS', 0, 391),
	('B) PaaS', 1, 391),
	('C) SaaS', 0, 391),
	('A) To automate the software delivery process', 1, 392),
	('B) To manage cloud resources', 0, 392),
	('C) To test software applications', 0, 392),
	('A) Collaboration', 0, 393),
	('B) Automation', 0, 393),
	('C) Siloed teams', 1, 393),

	-- Devops and Cloud True / False
	('True', 1, 394),
	('False', 0, 394),
	('True', 1, 395),
	('False', 0, 395),
	('True', 1, 396),
	('False', 0, 396),
	('True', 1, 397),
	('False', 0, 397),
	('True', 1, 398),
	('False', 0, 398),
	('True', 0, 399),
	('False', 1, 399),
	('True', 1, 400),
	('False', 0, 400),
	('True', 1, 401),
	('False', 0, 401),
	('True', 1, 402),
	('False', 0, 402),
	('True', 1, 403),
	('False', 0, 403);



-------------------------------    Graphic Desgin course   -------------------------------
-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(404, 'What does RGB stand for in graphic design?', 0, 21),
(405, 'Which of the following is a vector graphics editor?', 0, 21),
(406, 'Which file format is commonly used for web images due to its ability to display millions of colors?', 0, 21),
(407, 'What is the purpose of using layers in graphic design software?', 0, 21),
(408, 'Which principle of design refers to the distribution of visual weight in a composition?', 0, 21),
(409, 'In typography, what is kerning?', 0, 21),
(410, 'Which color model is primarily used for printing?', 0, 21),
(411, 'Which of these is an example of a serif font?', 0, 21),
(412, 'What is a mockup in graphic design?', 0, 21),
(413, 'Which of the following is a common resolution for high-quality print design?', 0, 21);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(414, 'The primary purpose of graphic design is to create visual content to communicate messages.', 1, 21),
(415, 'In graphic design, contrast is used to make elements stand out and create visual interest.', 1, 21),
(416, 'A raster image can be scaled infinitely without losing quality.', 1, 21),
(417, 'The golden ratio is often used in design to create aesthetically pleasing compositions.', 1, 21),
(418, 'Typography only involves choosing the font style for a design.', 1, 21),
(419, 'Vector graphics are made up of pixels.', 1, 21),
(420, 'White space in a design is also referred to as negative space.', 1, 21),
(421, 'Adobe Illustrator is typically used for photo editing.', 1, 21),
(422, 'RGB color model is used for designs intended for digital screens.', 1, 21),
(423, 'A logo should be complex and detailed to be effective.', 1, 21);

-- Choices for Question 404 (What does RGB stand for in graphic design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Red, Green, Blue', 1, 404),
('Red, Gray, Black', 0, 404),
('Red, Green, Brown', 0, 404);

-- Choices for Question 405 (Which of the following is a vector graphics editor?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Adobe Photoshop', 0, 405),
('Adobe Illustrator', 1, 405),
('Microsoft Paint', 0, 405);

-- Choices for Question 406 (Which file format is commonly used for web images due to its ability to display millions of colors?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('JPEG', 1, 406),
('BMP', 0, 406),
('SVG', 0, 406);

-- Choices for Question 407 (What is the purpose of using layers in graphic design software?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To edit text easily', 0, 407),
('To manage different elements separately', 1, 407),
('To create animations', 0, 407);

-- Choices for Question 408 (Which principle of design refers to the distribution of visual weight in a composition?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Contrast', 0, 408),
('Balance', 1, 408),
('Harmony', 0, 408);

-- Choices for Question 409 (In typography, what is kerning?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('The space between lines of text', 0, 409),
('The space between individual letters', 1, 409),
('The thickness of the text', 0, 409);

-- Choices for Question 410 (Which color model is primarily used for printing?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('RGB', 0, 410),
('CMYK', 1, 410),
('HSL', 0, 410);

-- Choices for Question 411 (Which of these is an example of a serif font?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Arial', 0, 411),
('Times New Roman', 1, 411),
('Verdana', 0, 411);

-- Choices for Question 412 (What is a mockup in graphic design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A finished product', 0, 412),
('A rough sketch', 0, 412),
('A visual presentation of a design in a real-world setting', 1, 412);

-- Choices for Question 413 (Which of the following is a common resolution for high-quality print design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('72 DPI', 0, 413),
('150 DPI', 0, 413),
('300 DPI', 1, 413);

-- Choices for Question 414 (The primary purpose of graphic design is to create visual content to communicate messages.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 414),
('False', 0, 414);

-- Choices for Question 415 (In graphic design, contrast is used to make elements stand out and create visual interest.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 415),
('False', 0, 415);

-- Choices for Question 416 (A raster image can be scaled infinitely without losing quality.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 416),
('False', 1, 416);

-- Choices for Question 417 (The golden ratio is often used in design to create aesthetically pleasing compositions.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 417),
('False', 0, 417);

-- Choices for Question 418 (Typography only involves choosing the font style for a design.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 418),
('False', 1, 418);

-- Choices for Question 419 (Vector graphics are made up of pixels.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 419),
('False', 1, 419);

-- Choices for Question 420 (White space in a design is also referred to as negative space.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 420),
('False', 0, 420);

-- Choices for Question 421 (Adobe Illustrator is typically used for photo editing.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 421),
('False', 1, 421);

-- Choices for Question 422 (RGB color model is used for designs intended for digital screens.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 422),
('False', 0, 422);

-- Choices for Question 423 (A logo should be complex and detailed to be effective.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 423),
('False', 1, 423);



-------------------------------    UI/UX Desgin   -------------------------------
-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(424, 'What does UI stand for in UI/UX design?', 0, 22),
(425, 'Which of the following is a primary focus of UX design?', 0, 22),
(426, 'What is a wireframe in UI/UX design?', 0, 22),
(427, 'Which of the following is a key principle of UX design?', 0, 22),
(428, 'Which tool is commonly used for creating UI prototypes?', 0, 22),
(429, 'What does a UX designer typically focus on?', 0, 22),
(430, 'What is usability testing?', 0, 22),
(431, 'Which of these is an example of a design system?', 0, 22),
(432, 'What is the goal of user research in UX design?', 0, 22),
(433, 'Which of the following is a benefit of responsive web design?', 0, 22);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(434, 'UI stands for User Interaction.', 1, 22),
(435, 'A wireframe is a high-fidelity visual representation of a website.', 1, 22),
(436, 'UX design is only concerned with the look and feel of a product.', 1, 22),
(437, 'A/B testing is a method used in UX design.', 1, 22),
(438, 'Responsive design adapts to different screen sizes and devices.', 1, 22),
(439, 'User personas are fictional characters used to represent different user types.', 1, 22),
(440, 'The main focus of UI design is creating engaging user experiences.', 1, 22),
(441, 'UX stands for User Experience.', 1, 22),
(442, 'Accessibility is not an important factor in UX design.', 1, 22),
(443, 'Prototyping is a key step in the UX design process.', 1, 22);


-- Choices for Question 424 (What does UI stand for in UI/UX design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('User Interface', 1, 424),
('User Interaction', 0, 424),
('User Integration', 0, 424);

-- Choices for Question 425 (Which of the following is a primary focus of UX design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Visual aesthetics', 0, 425),
('User satisfaction', 1, 425),
('Marketing strategy', 0, 425);

-- Choices for Question 426 (What is a wireframe in UI/UX design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A detailed color mockup', 0, 426),
('A blueprint of a design layout', 1, 426),
('A final version of a design', 0, 426);

-- Choices for Question 427 (Which of the following is a key principle of UX design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Consistency', 1, 427),
('Complexity', 0, 427),
('Vibrancy', 0, 427);

-- Choices for Question 428 (Which tool is commonly used for creating UI prototypes?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Microsoft Word', 0, 428),
('Sketch', 1, 428),
('Google Docs', 0, 428);

-- Choices for Question 429 (What does a UX designer typically focus on?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('User satisfaction and usability', 1, 429),
('Coding and software development', 0, 429),
('Branding and marketing', 0, 429);

-- Choices for Question 430 (What is usability testing?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A method to evaluate how easy it is to use a product', 1, 430),
('A method for assessing visual aesthetics', 0, 430),
('A marketing strategy to increase sales', 0, 430);

-- Choices for Question 431 (Which of these is an example of a design system?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Bootstrap', 1, 431),
('Photoshop', 0, 431),
('Google Analytics', 0, 431);

-- Choices for Question 432 (What is the goal of user research in UX design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To understand user needs and behaviors', 1, 432),
('To create a visual prototype', 0, 432),
('To develop a marketing plan', 0, 432);

-- Choices for Question 433 (Which of the following is a benefit of responsive web design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Faster loading times', 0, 433),
('Better accessibility across devices', 1, 433),
('Higher cost of development', 0, 433);


-- Choices for Question 434 (UI stands for User Interaction.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 434),
('False', 1, 434);

-- Choices for Question 435 (A wireframe is a high-fidelity visual representation of a website.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 435),
('False', 1, 435);

-- Choices for Question 436 (UX design is only concerned with the look and feel of a product.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 436),
('False', 1, 436);

-- Choices for Question 437 (A/B testing is a method used in UX design.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 437),
('False', 0, 437);

-- Choices for Question 438 (Responsive design adapts to different screen sizes and devices.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 438),
('False', 0, 438);

-- Choices for Question 439 (User personas are fictional characters used to represent different user types.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 439),
('False', 0, 439);

-- Choices for Question 440 (The main focus of UI design is creating engaging user experiences.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 440),
('False', 1, 440);

-- Choices for Question 441 (UX stands for User Experience.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 441),
('False', 0, 441);

-- Choices for Question 442 (Accessibility is not an important factor in UX design.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 442),
('False', 1, 442);

-- Choices for Question 443 (Prototyping is a key step in the UX design process.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 443),
('False', 0, 443);


-------------------------------    2D/3D Design   -------------------------------
-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(444, 'What does 3D stand for in design?', 0, 23),
(445, 'Which of the following is a common tool for creating 3D models?', 0, 23),
(446, 'What is the purpose of rendering in 3D design?', 0, 23),
(447, 'Which of the following is a 2D design software?', 0, 23),
(448, 'What is the difference between 2D and 3D design?', 0, 23),
(449, 'Which file format is commonly used to save 3D models?', 0, 23),
(450, 'What is UV mapping in 3D design?', 0, 23),
(451, 'Which of the following is an example of a 2D animation technique?', 0, 23),
(452, 'What does CAD stand for in design?', 0, 23),
(453, 'Which of the following is a key principle of 3D design?', 0, 23);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(454, '2D design refers to designs with two dimensions: height and width.', 1, 23),
(455, '3D modeling is only used in animation.', 1, 23),
(456, 'Rendering is the process of converting a 3D model into a 2D image.', 1, 23),
(457, 'Textures are used in 3D design to add details to models.', 1, 23),
(458, 'In 3D design, polygons are the basic building blocks of models.', 1, 23),
(459, 'Orthographic projection is used to create 3D views.', 1, 23),
(460, '2D design cannot be used for animation.', 1, 23),
(461, 'The Z-axis represents depth in 3D space.', 1, 23),
(462, '3D printing requires a 3D model as input.', 1, 23),
(463, 'Shading is irrelevant in 3D design.', 1, 23);

-- Choices for Question 444 (What does 3D stand for in design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Three Dimensions', 1, 444),
('Three Directions', 0, 444),
('Three Details', 0, 444);

-- Choices for Question 445 (Which of the following is a common tool for creating 3D models?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Photoshop', 0, 445),
('Blender', 1, 445),
('Illustrator', 0, 445);

-- Choices for Question 446 (What is the purpose of rendering in 3D design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To animate the model', 0, 446),
('To generate a final image or video from the 3D model', 1, 446),
('To apply textures', 0, 446);

-- Choices for Question 447 (Which of the following is a 2D design software?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Maya', 0, 447),
('Adobe Illustrator', 1, 447),
('Cinema 4D', 0, 447);

-- Choices for Question 448 (What is the difference between 2D and 3D design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('2D design includes depth, while 3D design does not', 0, 448),
('3D design includes depth, while 2D design does not', 1, 448),
('There is no difference', 0, 448);

-- Choices for Question 449 (Which file format is commonly used to save 3D models?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('.JPG', 0, 449),
('.OBJ', 1, 449),
('.PNG', 0, 449);

-- Choices for Question 450 (What is UV mapping in 3D design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A technique used to map textures onto a 3D model', 1, 450),
('A method to create animations', 0, 450),
('A tool to adjust lighting', 0, 450);

-- Choices for Question 451 (Which of the following is an example of a 2D animation technique?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Keyframing', 1, 451),
('Ray tracing', 0, 451),
('Motion capture', 0, 451);

-- Choices for Question 452 (What does CAD stand for in design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Computer-Assisted Design', 0, 452),
('Computer-Aided Design', 1, 452),
('Computer-Animated Design', 0, 452);

-- Choices for Question 453 (Which of the following is a key principle of 3D design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Shading', 1, 453),
('Color Theory', 0, 453),
('Flat Design', 0, 453);


-- Choices for Question 454 (2D design refers to designs with two dimensions: height and width.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 454),
('False', 0, 454);

-- Choices for Question 455 (3D modeling is only used in animation.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 455),
('False', 1, 455);

-- Choices for Question 456 (Rendering is the process of converting a 3D model into a 2D image.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 456),
('False', 0, 456);

-- Choices for Question 457 (Textures are used in 3D design to add details to models.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 457),
('False', 0, 457);

-- Choices for Question 458 (In 3D design, polygons are the basic building blocks of models.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 458),
('False', 0, 458);

-- Choices for Question 459 (Orthographic projection is used to create 3D views.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 459),
('False', 1, 459);

-- Choices for Question 460 (2D design cannot be used for animation.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 460),
('False', 1, 460);

-- Choices for Question 461 (The Z-axis represents depth in 3D space.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 461),
('False', 0, 461);

-- Choices for Question 462 (3D printing requires a 3D model as input.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 462),
('False', 0, 462);

-- Choices for Question 463 (Shading is irrelevant in 3D design.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 463),
('False', 1, 463);


-------------------------------    Software Design   -------------------------------

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(464, 'What is the main purpose of software design?', 0, 24),
(465, 'Which of the following is a design pattern?', 0, 24),
(466, 'What is UML used for in software design?', 0, 24),
(467, 'Which of the following best describes modular design?', 0, 24),
(468, 'What is an API in software design?', 0, 24),
(469, 'Which software design principle promotes code reusability?', 0, 24),
(470, 'What is the purpose of a class diagram in software design?', 0, 24),
(471, 'Which of the following is an example of an architectural pattern?', 0, 24),
(472, 'What is encapsulation in object-oriented design?', 0, 24),
(473, 'Which of the following is a benefit of using design patterns?', 0, 24);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(474, 'Design patterns provide solutions to common design problems.', 1, 24),
(475, 'In software design, cohesion refers to the degree to which elements belong together.', 1, 24),
(476, 'Inheritance is a concept in functional programming.', 1, 24),
(477, 'The Model-View-Controller (MVC) is an example of a software architectural pattern.', 1, 24),
(478, 'Object-oriented design focuses on functions rather than data.', 1, 24),
(479, 'Interfaces define the implementation of methods in software design.', 1, 24),
(480, 'Polymorphism allows objects to be treated as instances of their parent class.', 1, 24),
(481, 'Abstraction is a principle that hides the complexity of a system.', 1, 24),
(482, 'A software module should have low cohesion and high coupling.', 1, 24),
(483, 'Software design is only about the visual layout of applications.', 1, 24);

-- Choices for Question 464 (What is the main purpose of software design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To plan the structure and behavior of a system', 1, 464),
('To write code', 0, 464),
('To test software', 0, 464);

-- Choices for Question 465 (Which of the following is a design pattern?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Singleton', 1, 465),
('Compiler', 0, 465),
('Database', 0, 465);

-- Choices for Question 466 (What is UML used for in software design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To model and visualize software architecture', 1, 466),
('To write algorithms', 0, 466),
('To compile code', 0, 466);

-- Choices for Question 467 (Which of the following best describes modular design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Designing software as a set of independent modules', 1, 467),
('Combining all functionalities into a single block', 0, 467),
('Using only predefined libraries', 0, 467);

-- Choices for Question 468 (What is an API in software design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A set of rules for how software components interact', 1, 468),
('A programming language', 0, 468),
('A type of database', 0, 468);

-- Choices for Question 469 (Which software design principle promotes code reusability?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('DRY (Don’t Repeat Yourself)', 1, 469),
('WET (Write Everything Twice)', 0, 469),
('KISS (Keep It Simple, Stupid)', 0, 469);

-- Choices for Question 470 (What is the purpose of a class diagram in software design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To show the structure of a class and its relationships', 1, 470),
('To execute a program', 0, 470),
('To test software', 0, 470);

-- Choices for Question 471 (Which of the following is an example of an architectural pattern?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Layered architecture', 1, 471),
('JavaScript framework', 0, 471),
('Version control', 0, 471);

-- Choices for Question 472 (What is encapsulation in object-oriented design?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Hiding the internal state and requiring all interactions to be performed through methods', 1, 472),
('Sharing all internal data with other classes', 0, 472),
('Writing code in a single file', 0, 472);

-- Choices for Question 473 (Which of the following is a benefit of using design patterns?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('They provide tested, proven solutions to common problems', 1, 473),
('They are a way to avoid writing documentation', 0, 473),
('They eliminate the need for testing', 0, 473);



-- Choices for Question 474 (Design patterns provide solutions to common design problems.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 474),
('False', 0, 474);

-- Choices for Question 475 (In software design, cohesion refers to the degree to which elements belong together.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 475),
('False', 0, 475);

-- Choices for Question 476 (Inheritance is a concept in functional programming.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 476),
('False', 1, 476);

-- Choices for Question 477 (The Model-View-Controller (MVC) is an example of a software architectural pattern.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 477),
('False', 0, 477);

-- Choices for Question 478 (Object-oriented design focuses on functions rather than data.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 478),
('False', 1, 478);

-- Choices for Question 479 (Interfaces define the implementation of methods in software design.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 479),
('False', 1, 479);

-- Choices for Question 480 (Polymorphism allows objects to be treated as instances of their parent class.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 480),
('False', 0, 480);

-- Choices for Question 481 (Abstraction is a principle that hides the complexity of a system.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 481),
('False', 0, 481);

-- Choices for Question 482 (A software module should have low cohesion and high coupling.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 482),
('False', 1, 482);

-- Choices for Question 483 (Software design is only about the visual layout of applications.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 483),
('False', 1, 483);


-------------------------------    Design Thinking   -------------------------------

-- Insert MCQs
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(484, 'What is the first stage of the Design Thinking process?', 0, 25),
(485, 'Which of the following best describes Design Thinking?', 0, 25),
(486, 'What is the main goal of prototyping in Design Thinking?', 0, 25),
(487, 'Which of the following is a key principle of Design Thinking?', 0, 25),
(488, 'What does the term "empathy" mean in the context of Design Thinking?', 0, 25),
(489, 'Which stage of Design Thinking focuses on generating ideas?', 0, 25),
(490, 'What is an empathy map used for in Design Thinking?', 0, 25),
(491, 'Which of the following is a tool commonly used in the ideation phase of Design Thinking?', 0, 25),
(492, 'How does Design Thinking differ from traditional problem-solving methods?', 0, 25),
(493, 'What is the importance of user feedback in the Design Thinking process?', 0, 25);

-- Insert True/False Questions
INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
(494, 'Design Thinking is a linear process.', 1, 25),
(495, 'The empathy stage in Design Thinking involves understanding the user’s needs.', 1, 25),
(496, 'Ideation in Design Thinking involves generating as many ideas as possible.', 1, 25),
(497, 'Prototypes in Design Thinking are always high-fidelity models.', 1, 25),
(498, 'Testing is the final stage in the Design Thinking process.', 1, 25),
(499, 'Design Thinking focuses only on creating physical products.', 1, 25),
(500, 'In Design Thinking, the ideation phase is where solutions are implemented.', 1, 25),
(501, 'Empathy is not important in Design Thinking.', 1, 25),
(502, 'The Design Thinking process is only useful for designers.', 1, 25),
(503, 'Design Thinking encourages a user-centered approach to problem-solving.', 1, 25);

-- Choices for Question 484 (What is the first stage of the Design Thinking process?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Empathize', 1, 484),
('Define', 0, 484),
('Ideate', 0, 484);

-- Choices for Question 485 (Which of the following best describes Design Thinking?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('A user-centered approach to innovation', 1, 485),
('A traditional engineering methodology', 0, 485),
('A financial strategy', 0, 485);

-- Choices for Question 486 (What is the main goal of prototyping in Design Thinking?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To test ideas quickly and efficiently', 1, 486),
('To finalize the product', 0, 486),
('To gather investment', 0, 486);

-- Choices for Question 487 (Which of the following is a key principle of Design Thinking?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Human-centeredness', 1, 487),
('Cost reduction', 0, 487),
('Maximizing profits', 0, 487);

-- Choices for Question 488 (What does the term "empathy" mean in the context of Design Thinking?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Understanding the users needs  wants  and limitations', 1, 488),
('Creating a perfect solution', 0, 488),
('Focusing on technology', 0, 488);

-- Choices for Question 489 (Which stage of Design Thinking focuses on generating ideas?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Ideate', 1, 489),
('Empathize', 0, 489),
('Prototype', 0, 489);

-- Choices for Question 490 (What is an empathy map used for in Design Thinking?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('To visualize what the user sees, hears, thinks, and feels', 1, 490),
('To create technical specifications', 0, 490),
('To design the final product', 0, 490);

-- Choices for Question 491 (Which of the following is a tool commonly used in the ideation phase of Design Thinking?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('Brainstorming', 1, 491),
('Market analysis', 0, 491),
('Prototyping', 0, 491);

-- Choices for Question 492 (How does Design Thinking differ from traditional problem-solving methods?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('It emphasizes empathy and user-centeredness', 1, 492),
('It follows a strict, linear process', 0, 492),
('It avoids creativity', 0, 492);

-- Choices for Question 493 (What is the importance of user feedback in the Design Thinking process?)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('It helps refine and improve the solution', 1, 493),
('It is not necessary', 0, 493),
('It is only used in the final stage', 0, 493);

-- Choices for Question 494 (Design Thinking is a linear process.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 494),
('False', 1, 494);

-- Choices for Question 495 (The empathy stage in Design Thinking involves understanding the user’s needs.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 495),
('False', 0, 495);

-- Choices for Question 496 (Ideation in Design Thinking involves generating as many ideas as possible.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 496),
('False', 0, 496);

-- Choices for Question 497 (Prototypes in Design Thinking are always high-fidelity models.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 497),
('False', 1, 497);

-- Choices for Question 498 (Testing is the final stage in the Design Thinking process.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 498),
('False', 0, 498);

-- Choices for Question 499 (Design Thinking focuses only on creating physical products.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 499),
('False', 1, 499);

-- Choices for Question 500 (In Design Thinking, the ideation phase is where solutions are implemented.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 500),
('False', 1, 500);

-- Choices for Question 501 (Empathy is not important in Design Thinking.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 501),
('False', 1, 501);

-- Choices for Question 502 (The Design Thinking process is only useful for designers.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 0, 502),
('False', 1, 502);

-- Choices for Question 503 (Design Thinking encourages a user-centered approach to problem-solving.)
INSERT INTO [dbo].[Choices] ([Choice],[Right_Choice],[Question_ID]) VALUES
('True', 1, 503),
('False', 0, 503);




