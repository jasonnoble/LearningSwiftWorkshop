# Learning to program: Part 2

## Types
Swift is a *strongly-typed* language, this means the compiler must know what *type* an variable or constant is.  We've been able to skip this, because Swift *implies* the type for you.  Code examples were chosen to avoid this problem while some basics were learned.

All our examples in Part 1 were one of the four types below.

<div class="code-block">
var anIntValue:Int    = 1
var aFloatValue:Float = 1.3
var aBool:Bool        = true
var someWords:String  = "a string"
</div>

So when we wrote, <code class="code-voice">var isReady = true</code>, Swift knew it was really <code class="code-voice">var isReady:Bool = true</code>.

Let's tighten up our use of types by starting to declare, use and be aware of them.

## Functions

*Functions* are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to "call" the function to perform its task when needed.  Functions allow us to re-use code and make our code readable.

Functions have a *name*, take zero to many *parameters* and have a *return type*.

<div class="code-block">
func printHi() -> Void {
	print("Hi")
}

printHi()       // calls the printHi method.  prints "Hi"



func add(a:Int, b:Int) -> Int {
	return a + b;
}

add(1,2)       // calls the add method, passing two parameters.  returns 3



func addStrings(strOne:String, strTwo:String) -> String {
	return strOne + strTwo;
}

addStrings("Hi ", "there!)   // calls addStrings, passing two Strings  retuns "Hi there!"
</div>


## Using Objects, Classes, Methods
Swift is an *Object Oriented* language.  Variables and constants are actually "objects of a given type".  Objects can be described by a <code class="code-voice">class</code>.

A *method* is a *function* that can be called on an object and is part of the class, and returns a specific *type*.  A method named <code class="code-voice">hasSomething()</code> will return <code class="code-voice">Bool</code> (or it should).  A method named <code class="code-voice">count()</code> likely returns an <code class="code-voice">Int</code>.

A great starting point is the <code class="code-voice">String</code> class, because we can understand a string is a "string of characters" and the results are easy to see.  (String is actually a <code class="code-voice">struct</code>, but for today that's close enough to a <code class="code-voice">class</code> for us.)

<div class="code-block">
var str = "1234567890"      // creates a new string object
str.hasPrefix("123")        // returns true
str.hasPrefix(" 1 2 3")     // returns false
str.hasSuffix("890")        // returns true

// so this works
if str.hasPrefix("1") {
	print("The string starts with 1")
}
</div>

Talking through some of the above: <code class="code-voice">str</code> is an object of the String class.  <code class="code-voice">hasPrefix</code> is a method called on <code class="code-voice">str</code> which returns a <code class="code-voice">Bool</code> type.  We call a method on an object with a period <code class="code-voice">.</code>.

Methods are functions that are part of a class.  Other functions aren't associated with an object, Swift's global functions.  To get the length of a String, we use one of those.

<div class="code-block">
var str = "1234567890"
countElements(str)    // returns 10
</div>

The definition of an object also determines how operators work.  For example, <code class="code-voice">String</code> has
<ul>
	<li><code class="code-voice">+</code> add two strings together <code class="code-voice">var str = "hi " + "there"</code></li>
	<li><code class="code-voice">+=</code> <code class="code-voice">str += " friend"</code></li>
	<li><code class="code-voice">==</code> <code class="code-voice">str == "hi there friend"</code> returns <code class="code-voice">true</code></li>
</ul>

## Casting

**Casting** is when you change a type from one to another.  You can only add <code class="code-voice">+</code> two strings together.  You can't add a String to an Int.

<div class="code-block">
var str = "favorite number is " + 42  // this won't work
</div>

You must **cast** the Int 42 to a String, like this.

<div class="code-block">
var str = "favorite number is " + String(42)  // ok
</div>

Casting may seem tricky, but computers do *exactly what we tell them* so when we say add a String and a number, for example, it isn't clear what your intention is.  Do you want the String converted to a number, and output a number?  Or maybe you want the number to become a String, and output a string.  In either case, if the compiler can't infer what's happening, you'll get a syntax error and have to fix it.

<div class="look-block">
	<span class="title">Look #1: Types, Objects, Casting</span>
	<p>Observe how these functions are written and called.</p>
</div>

```swift
func sayHowdyTo(name:String) -> Void {
    print( "Howdy \(name)" )
}

sayHowdyTo("Brooks")
sayHowdyTo("Mak")


func greetPersonNamed(name:String, isMale:Bool) -> Void {
	sayHowdyTo(name)
	if isMale {
		print("* shakes hands *")
	} else {
		print("* courtsey *")
	}
}

greetPersonNamed("Brooks", true)
greetPersonNamed("Mak", false)


// we have to cast this Float to an Int
// Delete the cast - what happens?  What's the error?
var anInt:Int = 1 + Int(3.5)

```

<div class="fix-block">
	<span class="title">Fix #1: Types, Objects, Casting</span>
	<p>Lots of ways *not* to do it here.  Fix it up, please.</p>
</div>

```swift
/**
fun addTwo(a:Int,b) -> Void {
	return a+b;
}

addTwo(1, 2)
*/

/**
function addThree(a, b, c) -> Int {
	return a+b+c;
}

addThree(1,2)
*/


/**
var someInt:Int = 1 + 2.5
*/

```

<div class="write-block">
	<span class="title">Write #1: Types, Objects, Casting</span>
	<p>Learning what you learned above:</p>
	<ol>
	<li>Write a function that takes a <code class="code-voice">Float</code> and <code class="code-voice">Int</code></li>
	<li>Add the values together, and return as a <code class="code-voice">String</code></li>
	</ol>
</div>

```swift




```

## Named Parameters

Swift, like Objective C (and others) has *named parameters* but, doesn't require them in all cases.  When we getting to using objects, we'll have to be ready to use them.  Let's start by looking at a previous example, then updating it.

<div class="code-block">
// old way (no named params)
func addStrings(strOne:String, strTwo:String) -> String {
	return strOne + strTwo;
}

addStrings("Hi ", "there!)

// new way (requires named params)
func updatedAddStrings(#strOne:String, #strTwo:String) -> String {
	return strOne + strTwo;
}

updatedAddStrings(strOne:"Hi ", strTwo:"there!)
</div>

In our function declaration, if we add <code class="code-voice">#</code> before our parameter name, then the caller must pass the name of the param (before a colon).  This becomes important because we'll have to use named params when we perform more advanced operations with objects.

This is pretty confusing, but the Swift compiler helps a lot with this.  As does code-completion.

Here are some examples so you can see what this looks like.

<div class="code-block">
// a frame is a rectangle on the screen
var aFrame = CGRect(x: 0, y: 0, width: 300, height: 500)       

// the 'aFrame' object from ^ is passed into this call
var aView = UIView(frame:aFrame)                               

// creating a Car Object, which we will look at next
var myCar = Car(make: "Nissan", model: "Xterra", year: 2004)   
</div>

## Creating and Using Objects
We've still only created String and number objects, but now that we've learned about types, functions and named parameters we can move on to some much more powerful things.

On your own, you can learn about creating your own objects.  Today, we just need to learn how to use them better.

For example, if you create a UIColor object, like so...
```swift
			  // importing brings in objects from a separate library
import UIKit  // all the UI* classes are in the UIKit framework

UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
```
the Playground knows how to render that for you.

properties, methods


### Constructors
Constructors are special functions that create objects.  Objects create themselves, so we'd say, "the class implements the constructor".  Just above, we called the <code class="code-voice">UIColor</code> constructor <code class="code-voice">UIColor(red:, green:, blue:, alpha:)</code>.  
Constructors take the form <code class="code-voice">ClassName()</code> where () may contain zero or more arguments.   Constructors help us by creating **good** objects.  They take the params they need, verify those are good values, and return a well configured object to use.  

So let's create some things we can **see**.  Colors are cool, but there is even cooler stuff we can do.

```swift
var frame = CGRect(x: 0, y: 0, width: 400, height: 400)
var outterView = UIView(frame: frame)
outterView.backgroundColor = UIColor.purpleColor()

frame = CGRect(x: 100, y: 100, width: 200, height: 200)
var innerView = UIView(frame: frame)
innerView.backgroundColor = UIColor.yellowColor()

outterView.addSubview(innerView)

import XCPlayground                     // the XCP* classes are part of the XCPlayground framework
//XCPCaptureValue("view", outterView)
/** ^^ UNCOMMENT ^^ */
```

If you can't see your Timeline, press **Option + Command + Enter**.


<div class="look-block">
	<span class="title">Look #2: Named Params</span>
	<p>Here we see three different ways to create the color red.</p>
	<p>The first two use constructors, the last is not a constructor, but a function that returns an object.</p>
	<p>Many objects (not all) can be tested for equality.  UIColor allows it, so we can see that all these methods create equatable objects.</p>
</div>

```swift
let red1 = UIColor(hue: 255.0, saturation: 25.0, brightness: 100.0, alpha: 1.0)
let red2 = UIColor(red: 255.0, green: 0.0, blue: 0.0, alpha: 1.0)
let red3 = UIColor.redColor()

red1 == red2
red2 == red3

// Items drawn on the screen have a frame, which is a CGRect object
// Once creating a CGRect with this constructor, we pull out this 
// object's properties like so
let rect = CGRect(x: 0, y: 0, width: 50, height: 50)
rect.origin.x
rect.origin.y
rect.size.height
rect.size.width

// This is how we create a view
let aView = UIView(frame:rect)
aView.backgroundColor = red1     // (Quick Look!)

```

<div class="fix-block">
	<span class="title">Fix #2:  Named Params</span>
	<p>Here are a bunch of examples of ways that won't create objects.</p>
	<p>Fix each line up.</p>
	<p>Try to get more comfortable with the Code Completion feature.</p>
</div>

```swift
//let brown = UIColor(red: 25, green: 25, blue: 25, alpha: 1.0)

//var moreBrown = UIColor.brownColor

//var gray = UIColor.greyColor()

//let purple = UIColor(red: 150.0, green: 0.0, blue: 150.0)
```

<div class="write-block">
	<span class="title">Write #2:  Named Params</span>
	<p>Learning what you learned above:</p>
	<ol>
	<li>Draw a UIView that is at 0,0 and is 100 x 100 wide.  Set a background color.  (view1) </li>
	<li>Draw another UIView that is at 10,10 and is 80 x 80 wide with a different background color. (view2)</li>
	<li>Put view2 inside view1: <code class="code-voice">view1.addSubview(view2)</code></li>
	</ol>
</div>

```swift



```


## Optionals
You use *optionals* in situations where a value may be absent.  I like to think of them as a box.  You call a method, and you get a box.  You have to look in the box to see what it is.  

Until now, all our variables and constants have had a value.  Our world has been very certain.  

This was a new concept for me.  Optionals aren't new, but I had never heard of (them)[http://en.wikipedia.org/wiki/Option_type].

Here is an example.  <code class="code-voice">String</code> implents the <code class="code-voice">toInt()</code> method.  But not every string can be converted to a numeric value.  "42" converts, but not "hey", "howdy" or even "forty-two".  So <code class="code-voice">toInt()</code> doesn't return an <code class="code-voice">Int</code> but an <code class="code-voice">Int?</code>.  Optionals are indicated with a <code class="code-voice">?</code>.

The signature of <code class="code-voice">toInt()</code> is: <code class="code-voice">toInt() -> Int?</code>

<div class="code-block">
let someNumber = "42"
let convertedNumber = someNumber.toInt()
</div>

Let's add our type annotations in, to really see what's happening.

<div class="code-block">
let someNumber:Int = "42"
let convertedNumber:Int? = someNumber.toInt()
</div>

<code class="code-voice">convertedNumber</code> is an "optional int" written <code class="code-voice">Int?</code> in code.

To extract the value of the optional, we must unwrap it.  

*It's a box.  We have to look in the box.*

What if the box is empty?  What happens when the value is absent?  What does this return <code class="code-voice">"fortytwo".toInt()</code> if we call it?

### nil
<code class="code-voice">nil</code> is a special value in Swift.  It's the value when the *box is empty*.  Only conditionals can use a <code class="code-voice">nil</code> value.

<div class="code-block">
var someNumber:Int = 42
someNumber = nil            // DOES NOT COMPILE

var anotherNumber:Int? = 42
anotherNumber = nil         // VALID.  anotherNumber has no value set

"fortytwo".toInt()          // returns nil
</div>

If you declare an optional variable, and don't set a value, then it has a value of <code class="code-voice">nil</code>.

<div class="code-block">
var iAmNil:String?
</div>

**NOTE** optional constants declared with no value will always be <code class="code-voice">nil</code> (since they can't change).

### If statements and Forced Unwrapping

Now we see how we can *look into the box*.

Since optionals can have their value set to <code class="code-voice">nil</code>, we can test for that in an <code class="code-voice">if</code> statement.

<div class="code-block">
var iAmNil:String? = "not any more"
if iAmNil != nil {
	print("The String is not nil")
}
</div>

Inside the <code class="code-voice">if</code> now we know *the box has something in it* but we *don't know what it is*.  <code class="code-voice">iAmNil</code> isn't a string, so we can not do this: <code class="code-voice-bad">print("\\(iAmNil) is not nil")</code>.  That will work, but it will print out "Optional("not any more") is not nil".

The <code class="code-voice">!</code> force unwraps a conditional.  Once you know the box has something in it, you can use the <code class="code-voice">!</code> to get the value out.

```swift
var iAmNil:String? = "not any more"
if iAmNil != nil {
	print("\(iAmNil!) is not nil")
}
```

**NOTE** if you use <code class="code-voice">!</code> to unwrap a <code class="code-voice">nil</code> value, your program will CRASH with a runtime error.  That's bad.  Always make sure you know an optional has a value, before you unwrap it.  The following mechanisms make that easier.

### Optional Binding

Swift provides a way to check if an optional has a value, and extract it if it does.  This is called *optional binding* and it takes place in conjunction with an <code class="code-voice">if</code> statement.

<div class="code-block">
var optionalValue:Int? = 42
if let unwrappedValue = optionalValue {
	print("the value is \(unwrappedValue)")
	print("which is the same as \(optionalValue!)")
} else {
	print("the value is nil")
}
</div>

This is most frequently done when calling a function or method that returns an optional value.

<div class="code-block">
var string = "forty two"
if let number = string.toInt(){
	print("\(string) converted to integer \(number)")
} else {
	print("\(string) cannot convert to an integer")
}
</div>

Optional binding is a *syntactic sugar* - something that helps us write less code.

Before we get to exercises, here's a little something fun for you.  (NOTE - this is very reckless usage of forced unwrapping.  You should check values of things like the response from a URL.  There are a million reasons that could fail.)

** This was working the other day, but at last inspection it was not... **

```swift
/*
let url:NSURL? = NSURL(string: "http://24hourreadathon.com/wp-content/uploads/2014/04/hang-in-there.jpg")
let data:NSData? = NSData(contentsOfURL: url!)
let anotherView:UIImage? = UIImage(data: data!)

//XCPCaptureValue("another view", anotherView!)
*/
```

<div class="look-block">
	<span class="title">Look #3: Optionals </span>
	<p>Here we create a view, and check it's background color.</p>
	<p>UIColor backgroundColor returns a <code class="code-voice">UIColor?</code></p>
	<p>Notice once you set the color, you have to get it again. <code class="code-voice">backColor</code> doesn't update once <code class="code-voice">someView</code> has a color set.
</div>

```swift
let myFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
let someView:UIView = UIView(frame:myFrame)

var backColor:UIColor? = someView.backgroundColor

someView.backgroundColor = UIColor.redColor()

backColor = someView.backgroundColor
```

<div class="fix-block">
	<span class="title">Fix #3: Optionals </span>
	<p></p>
</div>

```swift
/** FIX 1
var aString:String = "howdy!"
aString = nil
*/



```

<div class="write-block">
	<span class="title">Write #3: Optionals </span>
	<p>Learning what you learned above:</p>
	<ol>
	<li>Copy and paste your code from Write #1 and change the function name.</li>
	<li>Update the method to return an Optional String.</li>
	<li>Only return a value if both values are positive.</li>
	</ol>
</div>

```swift

```

## Arrays
Swift provides two collection types, known as arrays and dictionaries, for storing collections of values. Arrays store ordered lists of values of the same type.  Arrays in Swift are always clear about (strongly typed to) the types of values and keys that they can store.

You can create an array by setting it to an *array literal* with the following syntax.

<div class="code-block">
var kidsNames:[String] = ["Mak", "Addi"]
</div>

The <code class="code-voice">[String]</code> says "this is an Array that holds only strings".  <code class="code-voice">["Mak", "Addi"]</code> is the Array literal.

If an Array is declared as a variable (as opposed to a constant) it is said to be *mutable* and you can change it.  You can see how many items are in the array with the <code class="code-voice">count</code> class.

<div class="code-block">
var kidsNames:[String] = ["Mak", "Addi"]
kidsNames.count            // returns 2
kidsNames.append("Pete")
kidsNames.count            // returns 3
kidsNames.append("Steve")
kidsNames.count            // returns 4
kidsNames                  // ["Mak", "Addi", "Pete", "Steve"]
</div>

If you want to traverse an entire array, our friend for-in can help:

<div class="code-block">
var kidsNames:[String] = ["Mak", "Addi"]
for kid in kidsNames {
	print("\(kid)")
}
</div>

Rather than iterating over a range of numbers, we're iterating over the items in an Array.

To get just one item out of an array, you use the <code class="code-voice">[]</code> operator.  This **subscript** operator always returns an **optional** of the type the array is storing.  Oh and strings are *zero indexed* which means the first character is accessed with <code class="code-voice">[0]</code> not <code class="code-voice">[1]</code>.

<div class="code-block">
var kidsNames:[String] = ["Mak", "Addi"]
var firstKid:String? = kidsNames[0]
if let kid = firstKid {
	print("\(kid) was my first")
}
</div>


## Bringing it all together
This is the **last coding block**!  

Exciting!

<div class="look-block">
	<span class="title">Look #4: </span>
	<p>We finally have enough pieces to start building some really cool stuff!</p>
	<p>Take your time and digest what's below.  Can you talk your way through it?</p>
</div>

```swift
/** function returns an optional string */
func baconWrap(item:String) -> String? {
    if item == "pickles" {
        return nil
    }
    
    return "bacon-wrapped \(item)"
}

var items = ["scallop", "hot dog", "sausage", "bacon", "pickles"]
var wrappableItems:[String] = [] /* empty array of strings */

for item in items {
    if let string = baconWrap(item) {  /* optional return */
        wrappableItems.append(string)
    } else {
        print("guess you can't wrap \(item)")
    }
}

print(wrappableItems)
```



<div class="fix-block">
	<span class="title">Fix #4: </span>
	<p>This is a similar example to what's above, but with lots of errors.</p>
</div>

```swift
/**
// This function is not HIPAA compliant.  
// it doesn't work for "Dr" as an honorific
func composeName(#a:String, #b:String) -> String {
    if( a == "Dr" ){
        return nil
    }
    return "\(b) \(a)"
}

var outterNames:[String] = [Mr, "Mrs", "Dr"]
var innerNames:[String] = ["Boxer", "Smith", "Wheezelsnitz"]

var composedNames:[String] = []

for outter in outterNames {
    for inner in innerNames {
        if let name = composeName(a: outer, b inner) {
            composedNames.append(name)
        }
    }


printn(composedNames)
*/
```

<div class="write-block">
	<span class="title">Write #4: </span>
	<p>Learning what you learned above:</p>
	<ol>
	<li>Write a function that takes a <code class="code-voice">String</code> and an <code class="code-voice">Int</code> and returns a <code class="code-voice">String?</code>.  It should only work for odd-numbered values</li>
	<li>Print the <code class="code-voice">String</code> to the screen as many times as the <code class="code-voice">Int</code>.</li>
	<li>Call <code class="code-voice">stringPrinter</code> in a for loop.  Keep track of how many times you've been through the loop.  Pass that value to <code class="code-voice">stringPrinter</code> as well.</li>
	</ol>
</div>

```swift

/*
// this should take a String and an Int, returns String?
// only works if the Int is odd
func stringPrinter ....  {
	....
}


var namesToCallWith:[String] = ....
var count:Int = 0

// loop through namesToCallWith
	// track number of times in loop (count)
	// call stringPrinter with name and count

*/

```

# Done!

If you made it this far, congratulations!  We moved at the speed of light, and you kept up.  Good show.

Just so you know, we've skipped *so* many things here.  Just with Arrays, we didn't talk about removing items, adding at the front or middle, sorting, and many others.


# Want more?
 * The GuidedTour Playground that's with today's downloads
 * (Apple's Swift Documents)[https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language]
 * (A good Swift cheat sheet)[http://cdn1.raywenderlich.com/wp-content/uploads/2014/06/RW-Swift-Cheatsheet-0_5.pdf]
 * (Ray Wenderlich tutorials)[http://www.raywenderlich.com]
 	* ()[http://www.raywenderlich.com/81879/storyboards-tutorial-swift-part-1]
 	* ()[http://www.raywenderlich.com/77974/making-a-gesture-driven-to-do-list-app-like-clear-in-swift-part-1]
 * Even more advanced
 	* (RW Liquidfun Tutorial)[http://www.raywenderlich.com/85515/liquidfun-tutorial-1]
 	* (Swift tricks)[http://realm.io/news/favorite-swift-tips-and-tricks-of-2014/]
 	* (Rails + Swift)[http://www.raywenderlich.com/85528/user-accounts-ios-ruby-rails-swift]
 
