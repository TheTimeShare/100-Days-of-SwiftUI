// inside a set you cannot have duplicate items and they dont store their items in a particular order
// creating sets works much like creating an array
// first here how you would make a set of actor names
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

// notice how that actually creates an array first then puts that array into the set?
// thats intentional and its the standard way of creating a set from fixed data
// remember the set will automatically remove any duplicate values
// and it wont remember the order that was used in the array

// if you are curious how the set has ordered the data just try and print it out
print(people)

// the second important difference when adding items to a set is visible when you add items individually
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

// notice how we are using insert()? when we had an array of strings we added items by calling append()
// but that name doesnt make sence here we arent calling an item to the end of the set
// because the set will store the item in whatever order it wants

// now you might think sets just sound like simplified arrays and after all 
// if you can’t have duplicates and you lose the order of your items why not just use arrays? 
// well both of those restrictions actually get turned into an advantage.

// first not storing duplicates is sometimes exactly what you want. 
// there’s a reason I chose actors in the previous example: the Screen Actors Guild 
// requires that all its members have a unique stage name to avoid confusion 
// which means that duplicates must never be allowed 
// or example, the actor Michael Keaton (Spider-Man Homecoming, Toy Story 3, Batman, and more) 
// is actually named Michael Douglas, but because there was already a Michael Douglas in the guild 
// (Avengers, Falling Down, Romancing the Stone, and more) he had to have a unique name

// second instead of storing your items in the exact order you specify sets instead store them in a highly optimized order that makes it very fast to locate items
// and the difference isn’t small: if you have an array of 1000 movie names and use something like contains() 
// to check whether it contains “The Dark Knight” Swift needs to go through every item until it finds one that matches 
// that might mean checking all 1000 movie names before returning false because The Dark Knight wasn’t in the array.

// in comparison calling contains() on a set runs so fast you’d struggle to measure it meaningfully 
// heck even if you had a million items in the set, or even 10 million items 
// it would still run instantly whereas an array might take minutes or longer to do the same work.

// most of the time you’ll find yourself using arrays rather than sets but sometimes 
// just sometimes you’ll find that a set is exactly the right choice to solve a particular problem
// and it will make otherwise slow code run in no time at all.

// tip alongside contains() you’ll also find count to read the number of items in a set
// and sorted() to return a sorted array containing the the set’s items.
