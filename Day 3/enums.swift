// an enum, short for enumeration, is a set of named values we can create and use 
// they dont have any special meaning in swift but they are more efficient and safer 
// so you will use them alot in your code

// to demonstrate the problem lets say you wanted to write some code to let the user select a day of the week 
// you might start out like this 
var selected = "Monday"

// later on in your code you change it like so 
selected = "Tuesday"

// that might work well in very simple programs but take a look at this
selected = "January"

// oops! you accidentally typed in a month rather than a day
// what will your code do? well you might be lucky enough to have a colleague 
// spot the error as they review your code but how about this:
selected = "Friday "
// that has a space at the end of Friday and “Friday ” with a space is different from “Friday” without a space 
// in swift’s eyes. again what would your code do?

// using strings for this kind of thing takes some very careful programming
// but it’s also pretty inefficient
// do we really need to store all the letters of “Friday” to track one single day?

// this is where enums come in they let us define a new data type with a handful of specific values that it can have
// think of a boolean that can only have true or false
// you can’t set it to “maybe” or “probably” because that isn’t in the range of values it understands
// enums are the same: we get to list up front the range of values it can have and Swift will 
// make sure you never make a mistake using them.

// so we could rewrite our weekdays into a new enum like this 
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// with that change you can’t accidentally use “Friday ” with an extra space in there
// or put a month name instead you must always choose one of the possible days listed in the enum. 
// you’ll even see swift offer up all possible options when you’ve typed Weekday. 
// because it knows you’re going to select one of the cases.

// swift does two things that make enums a little easier to use
// first when you have many cases in an enum you can just write case once
// then separate each case with a comma:
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

// second remember that once you assign a value to a variable or constant 
// its data type becomes fixed – you can’t set a variable to a string at first 
// then an integer later on well for enums this means you can skip the enum name after the first assignment
// like this: 
var day = Weekday.monday
day = .tuesday
day = .friday

// swift knows that .tuesday must refer to Weekday.tuesday because day must always be some kind of Weekday.

// although it isn’t visible here one major benefit of enums is that Swift stores them in an optimized form 
// when we say Weekday.monday Swift is likely to store that using a single integer such as 0
// which is much more efficient to store and check than the letters M, o, n, d, a, y.
