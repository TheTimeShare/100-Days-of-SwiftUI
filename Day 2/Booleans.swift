// booleans is just like making other data types 
// execpt you should assign an initial value to either true or false like this.
let goodCat = true 
let gameOver = false

// you can also assign a booleans initial value from other code
// as long as ultimately its either true or false
let isMultiple = 120.isMultiple(of:3)

// booleans dosent have arithmetic operators such as - and +
// booleans do have one special operator and thats "!"
// this flips the value from true to false, or false to true.
var isAuthenticated = false // output: false
isAuthenticated = !isAuthenticated
print(isAuthenticated) // output: true
isAuthenticated =!isAuthenticated
print(isAuthenticated) // output: false

// booleans do have a little extra functionality that can be useful
// if you call toggle() on a boolean it will flip a true to false and a false to true
// its works the same way as "!"
var gameOver = false 
print(gameOver) // output: false 

gameOver.toggle()
print(gameOver) // output: true
