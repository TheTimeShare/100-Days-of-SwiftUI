import Cocoa

// when you assign text to a constant or variable its called a string.
// strings in swift starts with and ends with double quotes.
// what is put inside the double quotes is up to you.
let actor = "Jennifer Aniston"

// you can use punctuation, emoji and other characters like this:
let filename = "filename.swift"
let result = "⭐️ You win! ⭐️"

// when you need to use double quote characters inside a double quote you use backslash.
// Swift will tell you with error messages and remind you :D
let quote = "Then he tapped a sign \"believe\" and walked away"

// there is really no limit to how long a string can be.
// one thing swift dosent like is mutiple line strings like this.
let movie = "
A day in
the life of an
Apple engineer
"

// the right way of doing it is with triple double quotes.
// the multiple lines of strings arent used often but its always nice to know how its done.
let movie = """
A day in
the life of an
Apple engineer
"""

// you can read the length of a string by using .count after the name of the variable or constant.
// because "actor" has the text "Jennifer Aniston" it will print 15.
print(actor.count)

// you dont need to length of a string directly if you dont want to
// you can assign it to another constant like this.
let namelength = actor.count
print(namelength)

// second useful piece of functionality is uppercased().
// which prints the same as the string except every one of its letter is uppercased.
print(result.uppercased())

// Last piece of helpful string functinality is called hasPrefix().
// it lets us know weather a string starts with some letters of our choosing.
// keep in mind that its case sensitive.
print(movie.hasPrefix("A day"))

// There is also a hasSuffix() counterpart.
// it checks weather a string ends with some text.
// keep in mind that this is also case sensitive.
print(filename.hasSuffix(".swift"))

