// array are data types just like "Strings", "Integers" and "Double"
// instead of just one string they can hold 1 or 2 or 50 or 1million or a billion
// they can automatically adapt to hold as many as you need and always hold data in the order you add it

// here is some simple arrays 
// notice that we start with square brackets and with commas between every item
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temeratures = [25.3, 28.2, 26.4]

// swift counts 0 1 2 3 4 
// the first value inside the square brackets is 0 then second value is 1 and so on
// we can read some values out from the array like this:
print(beatles[0]) // output: John
print(numbers[1]) // output: 8
print(temperatures[2]) // output: 26.4
// tip: Make sure an item exists at the index you’re asking for
// otherwise your code will crash and your app will just stop working.

// if your array is a variable you can modify it after creating it
// for example you can use append() to add new items
beatles.append("Alec")

// there is no limit to how many items you want to add
beatles.append("Alex")
beatles.append("Tom")
beatles.append("TImmy")
beatles.append("Ray")

// swift knows what type of data you are trying to add
// so this code is not allowed 
temperature.append("Chris")
// since "temperature" is an array of Double you cannot add strings to it

// This also applies to reading data out of the array 
// swift knows that the beatles array contains strings
// so when you read one value out you’ll always get a string.
// if you try to do the same with numbers you’ll always get an integer
// swift won’t let you mix these two different types together so this kind of code isn’t allowed:
let firstBeatle = beatles[0]
let firstNumber = numbers[0]
let notAllowed = firstBeatle + firstNumber

// you can see what type of array you have when you start an empty array
// this is done with very precise syntax
var scores = Array<Int>()
scores.append(100)
scores.append(50)
scores.append(10)
print(scores[1])

// arrays are so common in swift that there is a special way to create them
// rather than typing Array<String>() you can wrtie [String]
// so this code here does the exact same as the one above
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

// you can use .count to read how many items are in an array
// just like we did with strings
print(albums.count)

// you can remove items from arrays by using either remove(at:) or removeAll()
// remove(at:) to remove one item at a specific index
// removeAll() to remove everything
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count) // output: 4

characters.remove(at: 2)
print(characters.count) // output 3

characters.removeAll()
print(characters.count) // output: 0

// you can check weather an array contains a particular item by using contains() like this 
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen")) // output: False

// you can sort an array using sorted() like this
// this will sort the array alphabetically
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) // output: ["Budapest", "London", "Rome", "Tokyo"]

// you can reverse an array by calling reversed() on it
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents) // ["Biden", "Trump", "Obama", "Bush"]

// when you reverse an array swift is very clever 
// it doesn’t actually do the work of rearranging all the items 
// but instead just remembers to itself that you want the items to be reversed
// so when you print out reversedPresidents() don’t be surprised to see it’s not just a simple array any more!

// arrays are extremely common in swift and you’ll have lots of opportunity to learn more about them as you progress
// even better sorted(), reversed(), and lots of other array functionality also exists for strings 
// using sorted() there puts the string’s letters in alphabetical order, making something like “swift” into “fistw”
