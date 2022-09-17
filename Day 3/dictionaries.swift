// youve seen how arrays are a great way to store data that has a particular order
// such as days of the week or temperatures for a city 
// arrays are a great choice when items should be stored in the order you add them
/// or when you might have duplicate items in there 
// but very often accessing data by its position in the array can be annoying or even dangerous.
// for example here is an array containing an employees details 
var employee = ["Taylor Swift", "Singer", "Nashville"]

// i have told you that the data is about on amployee so you might be able to guess what various parts do
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

// but that has some problems, first you can be sure that employee[2] is their location 
// maybe its their password
// second there is no guarentee that item 2 is even there 
// particularly because we made the array a variable
// this kind of code would cause serious problems
print("Name: \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])")
print("Location: \(employee[2])")    
// that now prints Nashville as the job title which is wrong
// this would cause our code to crash when it reads employee[2]

// swift has a solution for this and its called dictionaries
// dictionaries doesnt store data according to their position like arrays do
// but instead let us decide where items should be stored
// for example we could rewrite our previous example to be more explicit about what each item is
let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]

// if we split that up into individual lines you will get a better idea of what the code does
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer", 
    "location": "Nashville"
]


// when it comes to reading data out from dictionaries you can use the same keys you used when creating it
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

// if you try that in a playground you’ll see Xcode throws up various warnings
// along the lines of “Expression implicitly coerced from 'String?' to 'Any’”
// worse if you look at the output from your playground
// you’ll see it prints Optional("Taylor Swift") rather than just Taylor Swift what gives?

// well think about this 
print(employee2["password"])
print(employee2["status"])
print(employee2["manager"])

// all of that is valid Swift code but we’re trying to read dictionary keys that don’t have a value attached to them
// sure swift could just crash here just like it will crash if you read an array index that doesn’t exist
// but that would make it very hard to work with at least if you have an array with 10 items 
// you know it’s safe to read indices 0 through 9
// (“Indices” is just the plural form of “index”, in case you weren’t sure.)

// so swift provides an alternative: when you access data inside a dictionary
// it will tell us “you might get a value back, but you might get back nothing at all
// swift calls these optionals because the existence of data is optional and it might be there or it might not.

// swift will even warn you when you write the code, albeit in a rather obscure way
// it will say “Expression implicitly coerced from 'String?' to 'Any’”
// but it will really mean “this data might not actually be there and are you sure you want to print it?”

// in order to not get this error we put in a default value
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

// all the examples have used strings for both the keys and values
// but you can use other data types for either of them
// for example you could track which students graduated from school using strings for names and booleans
// for their graduation status 
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

// or you could track when olympics took place along with their locations
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])


// you can also create empty dictionaries using whatever explicit types you want to store
// then set keys one by one
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
// notice how we need to write [String: Int] now to mean a dictionary with strings for its keys and integers for its values.

// because each dictionary item must exist at one specific key 
// dictionaries don’t allow duplicate keys to exist 
// instead if you set a value for a key that already exists swift will overwrite whatever was the previous value.

// for example if you were chatting with a friend about superheroes and supervillains you might store them in a dictionary like this:
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

// ff your friend disagrees that The Joker is Batman’s arch-enemy, you can just rewrite that value by using the same key:
archEnemies["Batman"] = "Penguin"

// finally just like arrays and the other data types we’ve seen so far dictionaries come with some useful functionality that you’ll want to use in the future
// count and removeAll() both exists for dictionaries and work just like they do for arrays.
