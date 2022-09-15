import Cocoa

var greeting = "Hello everyone!"

// "var" is creating a new changeable variable.
// You wont need to to type "var" infront since its only use to create new variables.
var name = "larry"
name = "Harry"
name = "Marry"

// "let" wont let us change the variable. let is a constant.
let character = "Tommy"


// as you can see it changed over time. We dont use "var" to create a new variable. 
// we are modifying it rather than creating 100s of variables.
var playerName = "Tom"
print(playerName)

playerName = "Tim"
print(playerName)

playerName = "john"
print(playerName)

// we are using 'let' which is an constant. The value will not change and Swift is not allowing us to
// we will recieve a big error message telling us we cant change it. 
// we should use constants more rather than using variables. 
let managerName = "Emil Johansen"
let catName = "Milo"
let bestOS = "MacOS is the best OS"


