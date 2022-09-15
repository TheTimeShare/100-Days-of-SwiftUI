import Cocoa

// making a new integer works just like making a string.
// use "let" or "var" depending of weather you want a constant or variable.
// for example we could create a score constant like this
let score = 10


// integers could get really big and sometimes unreadable
// for example what number is this?
let reallyBig = 1000000000

// to avoid this we use underscores. Swift ignores underscores completely.
// so we could improve our code like this. 
let reallyBig = 100_000_000

// since swift ignores underscores we could write it however we want.
// the value is still 100 million (1000000000)
let reallyBig = 10_00__00___00___00


// you can create  integers from other integers.
// rather than making new constants each time, swift has some special operations.
// that adjust an integer somehow and assigns the results back to the original number.
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

// for example this creates a counter variable equal to 10 then adds 5 more to it
var counter = 10
counter = counter + 5

// rather than writing "counter = counter + 5" you can use the short hand +=
// which adds a number directly to the integer in question:
counter += 10
print(counter)

// this does exactly the same thing just with less typing. 
// this is called "compund assignment operators"
// they come in other forms too:
counter *= 2
print(counter)
counter += 5
print(counter)
counter /= 2
print(counter)


// before we are done with integers
// like strings, integers have some useful functionality attached. 
// for example you can call isMultiple(of:) on an integer to find weather its a multiple of another integer 
// so we could ask weather 120 is a multiple of three like this:
let number = 120
print(number.isMultiple(of: 3))

// Im calling isMultiple(of:) on a constant there but you can just use the number directly if you want.
print(120.isMultiple(of: 3))

