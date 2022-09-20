// swift is able to figure out what type of data a constant or variable holds
// based of what we assign it to
// however sometimes we dont want to assign it to something immediately
// or sometimes we want to overwrite whatever swifts choice of type
// that where type annotations come in

// so far we have been making constants and variables like this
let surname = "Lasso"
var score = 0

// this usues type inference: swift infers that "surname" is a string beccuase we assigning
// text to it and then infers that "score" in an integer because we are assigning a whole number to it.

// type annotations let us be explicit about what data types we want and look like this
let surname: String = "Lasso"
var score: Int = 0

// now we are being explicit: surname must be a string and score must be an integer
// thats exactly what swifts type inference would have done anyway
// but sometimes it isnt what you may need or want

// for example maybe score is a decimal because the user can get half a point
// so you would write it like this
var score: Double = 0

// without the Double: part swift would infer that to be an integer
// but we are overwriting that and saying its definitely a decimal number

// we have looked at a few types of data so far and its important you know their names so you can use the right type of annotation when needed

// string holds text
let playerName: String = "Roy"

// Int holds whole numbers
var luckyNumber: Int = 13

// Double holds decimal numbers
let pi: Double = 3.14159

// Bool holds either true or false
var is Authenticated: Bool = true

// array holds lots of different values, all in the order you add them
// this must be assigned as a string
var albums: [String] = ["Red", "Fearless", "Folkore"]

// dictionary holds lots of different values, where you get to decide how data should be ordered
// This must be specialized such as [String: Int]
var user: [String: String] = ["id"]

// set holds lots of different values but stores them in an order that is optimized for checking what it contains
// this must be specialized succh as Set<String>
var books: Set<String> = Set(["The"])

// knowing all these types is important for times you dont want to provide initial values
// for example this creates an array of strings
var soda: [String] = ["Coke", "Pepsi"]

// Type annotation isnt needed there because swift acn see youre assigning an array of strings
// however if you wanted to create an empty array of strings you would need to know the type
var teams: [String] = [String]()

// again the type of annotation isnt required but you still need to know that an array of strings is written as [String]
// remebmer you need to add the open and close parentheses when making empty arrays. dictionaries and sets because swift allowed us to custemize the way they are created

// some people prefer to use an empty array to it like this
var cities: [String] = []

// and some like this
var clues = [String]()


// as well as all those there are enums
// enums are a little different from the others because they lot us create new types of our own such as an enum containing days of the week
// an enum containing which UI theme the user wants or even an enum conttaining which screen is currently showing in our app

// values of an enum have the same type as the enum itself
// so we could write something like this
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

// this is what allows swift to remove the enum name for future assignments
// so we can write style = .dark and it knows any new value for style must be some kind of UIStyle

// now there’s a very good chance you’ll be asking when you should use type annotations
// so it might be helpful for you to know that I prefer to use type inference as much as possible
// meaning that I assign a value to a constant or variable and Swift chooses the correct type automatically
// sometimes this means using something like var score = 0.0 so that I get a Double.


// the most common exception to this is with cconstants i dont have a value yet
// you see swift is really clever
// you can create a constant that dosentt have a value just yet and later on provide that value and swift will ensure we dont accidentally use it until a value is present
// it will also ensure that you only ever set the value once, so that it remains constant

// for example
let username: String
// lots of complex logic
username = "@AlecKozlov"
// lots of complex logic
print(username)

// That code is legal: we’re saying username will contain a string at some point, and we provide a value before using it. If the assignment line – username = "@twostraws" – was missing, then Swift would refuse to build our code because username wouldn’t have a value, and similarly if we tried to set a value to username a second time Swift would also complain.
// this kind of code requires a type annotation, because without an initial value being assigned Swift doesn’t know what kind of data username will contain.
// regardless of whether you use type inference or type annotation, there is one golden rule: Swift must at all times know what data types your constants and variables contain. This is at the core of being a type-safe language, and stops us doing nonsense things like 5 + true or similar.
// important: Although type annotation can let us override Swift’s type inference to a degree, our finished code must still be possible. For example, this is not allowed:

let score: Int = "Zero"

// swift just can’t convert “Zero” to an integer for us, even with a type annotation requesting it, so the code just won’t build.
