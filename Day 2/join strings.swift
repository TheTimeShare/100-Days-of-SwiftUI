// in swift you can join two strings together with "+"
let firstpart = "Hello, "
let secondpart = "world!"
let greeting = firstpart + secondpart
print(greeting) // output: Hello, world!

// you can do this many times if you need to
let people = "Haters"
let action = "hate"
let lyric = people + "gonna" + action
print(lyric) // output: people gonna hate

// swift has string interpolation 
// and it lets us efficiently create strings from other strings, 
// but also from integers, decimal numbers, and more.
// if you remember earlier you coud include double quotes inside strings
// as long as they have a backslash before them so swift knows how to treat them.
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// something similar is used with string interpolation
// you write a backslash insdie your string then palce the name of a variable
// or constant inside parentheseslet 
let name = "Milo
let age = "2"
let message = " \(name) is almost \(age) years old"
print(message) // output: Milo is almost 2 years old"

// You see, using + lets us add strings to strings, integers to integers, and decimals to decimals, 
// but doesn’t let us add integers to strings. So, this kind of code is not allowed
let number = 11
let missionMessage = "Apollo " + " landed on the moon."

// you could ask swift to treat a number like a string if you wanted
let missionMessage = "Apollo " + String(number) + " landed on the moon."

// it is still both faster and easier to read to use string interpolation
let missionMessage = "Apollo \*number) landed on the moon."

// you can put calculations inside the string interpolation if you want to
print("5 x 5 is \(5*5)") // output: 5 x 5 is 25
