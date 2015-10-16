/*:
[Previous](@previous)

# Objects, Classes, Methods
Swift is an *Object Oriented* language.  Variables and constants are actually "objects of a given type".  Objects can be described by a `class`.

* A **property** stores a value.
* A **method** is a *function* that provides functionality.
* Both are accessed using `.` notation.

A great starting point is the `String` class, because we can understand a string is a "string of characters" and the results are easy to see.  (String is actually a `struct`, but for today that's close enough to a `class` for us.)

    var str = "1234567890"      // creates a new string object
    
    str.characters              // property - the individual characters
    str.characters.count        // method on the above propety - returns 10

    str.hasPrefix("123")        // method - returns true
    str.hasPrefix(" 1 2 3")     // method - returns false
    str.hasSuffix("890")        // method - returns true

    // so this works
    if str.hasPrefix("1") {
        print("The string starts with 1")
    }

To get the length of a String, we accessed the String's characters, then asked for their count.

Talking through some of the above: `str` is an object of the String class.  `hasPrefix` is a method called on `str` which returns a `Bool` type.

The definition of an object also determines how (and if) operators work.  

For example, `String` has

    `+` add two strings together `var str = "hi " + "there"`
    `+=` `str += " friend"`
    `==` `str == "hi there friend"` returns `true`

![Look](Look.png)
> `CMD + SHIFT + Y` for Console.
>
> Let's see what we can with do with Strings besides concatenating them together.
*/

var str = ""
str.isEmpty
str == ""

str = "1234567890"
str.hasPrefix("123")
str.hasPrefix(" 1 2 3")
str.hasSuffix("890")

if str.hasPrefix("1") {
    print("The string starts with 1")
}

// characters is type of property we can loop through, like this
for char in str.characters {
    print(" -> \(char) <-")
    // check console to see this output
}
str.characters.count

var salutation = "Hello"
var name = "Mak"
let greeting = salutation + " " + name

var foo = ""
for ii in 0..<10 {
    foo += ". "
}
foo

let newString = str
if newString == str {
    print("these are the same")
}

/*:

So let's see how to write our own object.  Imagine an application that has reminders.  You can choose to rate each item.

    class ReminderItem {
        var text:String
        var complete = false
        var importance:Int?

        init(initialText:String) {
            text = initialText
        }

        func howImportant() -> String {
            if let rating = importance {
                return "Rated at \(rating)"
            } else {
            return "Not rated.  Not important"
            }
        }
    }

The ReminderItem class has:
* text `String` - required.  you can't have a reminder to not do anything
* complete `Bool` - required - default set to false
* a **constructor** `init(initialText:String)` that takes a String and creates a new, valid ReminderItem object
* a **method** `howImportant()` that returns a string saying how important it is, based on user's rating

    let itemOne = ReminderItem(initialText: "grab the milk")
    itemOne.howImportant()

    let itemTwo = ReminderItem(initialText: "beef")
    itemTwo.importance = 11
    itemTwo.howImportant()

*/
import XCPlayground
import Foundation

class ReminderItem {
    var text:String
    var complete = false
    var importance:Int?
    
    init(initialText:String) {
        text = initialText
    }
    
    func recordRating(rating:Int) {
        importance = rating
    }
    
    func howImportant() -> String {
        if let rating = importance {
            return "Rated at \(rating)"
        } else {
            return "Not rated.  Not important"
        }
    }
}

let itemOne = ReminderItem(initialText: "grab the milk")
itemOne.howImportant()

itemOne.complete
itemOne.complete = true
itemOne.complete

let itemTwo = ReminderItem(initialText: "beef")
itemTwo.importance = 11
itemTwo.howImportant()

/*:
Here is a simple classes to play with represenating an object you've heard of for sure.
*/

let pi = 3.14159

class SomeCircle {
    var radius:Double
    
    init(withRadius radiusIn:Double) {
        radius = radiusIn
    }
    
    init(withDiameter diameter:Double) {
        radius = diameter
    }
    
    init(withArea area:Double) {
        radius = sqrt( area / pi)
    }
    
    init(withCircumference circumference:Double) {
        radius = circumference / ( 2 * pi )
    }
    
    
    func diameter() -> Double {
        return radius * 2
    }
    
    func area() -> Double {
        return pi * radius * radius
    }
    
    func circumference() -> Double {
        return 2 * pi * radius
    }
}

let circleOne = SomeCircle(withRadius: 5)
circleOne.radius
circleOne.diameter()
circleOne.area()
circleOne.circumference()

let circleTwo = SomeCircle(withArea: circleOne.area())
circleTwo.radius

if circleOne.radius != circleTwo.radius {
    print("something is wrong")
}

for ii in 1..<100 {
    let circle = SomeCircle(radiusIn:Double(ii))
    /* CMD + OPT + ENTER */
    XCPCaptureValue("Area", value: circle.area())
}


/*:
![Fix](Fix.png)
> 
*/

/*  /** UNCOMMENT **/

class SomeRectangle
    var lengthSize
    var widthSize
    
    init(length:Double, width:Double) {
        lengthSize = length
        widthSize = width
    }
    
    func area() -> Double {
        return lengthSize + widthSize
    }
    
    func perimeter() -> Double {
        return lengthSize + (2 * width)
    }
}

let smallRec = SomeRectangle(length: 1.5, width: 3.0)
smallRec.area
smallRec.perimeter()

let largeRec = SomeRectangle(12.5, 39.1)
largeRec.area()
largeRec.perimeter()

*/  /** UNCOMMENT **/


/*:
![Write](Write.png)
> Create the SomeSquare class.
>
> It should have functions to return area() and perimeter() like our other shapes
*/





/*:

[Next](@next) is some **real** fun!
*/
