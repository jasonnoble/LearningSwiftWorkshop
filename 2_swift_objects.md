# Learning to program: Part 2



## Types
Swift is a *strongly-typed* language, this means the compiler must know what *type* an variable or constant is.  We've been able to skip this, because Swift *implies* the type for you.  Code examples were choosen to avoid this problem while some basics were learned.

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
	println("Hi")
}

printHi()       // calls the printHi method.  prints "Hi"



func add(a:Int, b:Int) -> Int {
	return a + b;
}

add(1,2)       // calls the add method, passing two parameters.  returns 3



func addStrings(strOne:String, strTwo:String) -> String {
	return strOne + strTwo;
}

addStrings("Hi ", "there!)   // calls addStrings, passing two String.  retuns "Hi there!"
</div>


## Using Objects, Classes, Methods
Swift is an *Object Oriented* language.  Variables and constants are actually "objects of a given type".  Objects can be described by a <code class="code-voice">class</code>.

A *method* is a *function* that can be called on an object and is part of the class, and returns a specific *type*.  A method named <code class="code-voice">hasSomething()</code> will return <code class="code-voice">Bool</code> (or it should).  A method named <code class="code-voice">count()</code> likely returns an <code class="code-voice">Int</code>.

A great starting point is the <code class="code-voice">String</code> class, because we can understand a string is a "string of characters" and the results are easy to see.  (String is actually a <code class="code-voice">struct</code>, but for today that's close enough to a <code class="code-voice">class</code> for us.)

<div class="code-block">
var str = "1234567890"
str.hasPrefix("123")        // returns true
str.hasPrefix(" 1 2 3")     // returns false
str.hasSuffix("890")        // returns true

// so this works
if str.hasPrefix("1") {
	println("The string starts with 1")
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
	<span class="title">Look: </span>
	<p></p>
</div>

```swift
func sayHowdyTo(name:String) -> Void {
    println( "Howdy \(name)" )
}

sayHowdyTo("Brooks")
sayHowdyTo("Mak")


func greetPersonNamed(name:String, isMale:Bool) -> Void {
	sayHowdyTo(name)
	if isMale {
		println("* shakes hands *")
	} else {
		println("* courtsey *")
	}
}

greetPersonNamed("Brooks", true)
greetPersonNamed("Mak", false)

```

<div class="fix-block">
	<span class="title">Fix: </span>
	<p></p>
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
	<span class="title">Write: </span>
	<p>Learning what you learned above:</p>
	<ol>
	<li></li>
	<li></li>
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
var aFrame = CGRect(x: 0, y: 0, width: 300, height: 500)       // a frame is a rectangle on the screen

var aView = UIView(frame:aFrame)                               // the 'aFrame' object from ^ is passed into this call

var myCar = Car(make: "Nissan", model: "Xterra", year: 2004)   // creating a Car Object, which we will look at next
</div>

## Creating and Using Objects
We've still only created String and number objects, but now that we've learned about types, functions and named parameters we can move on to some much more powerful things.

On your own, you can learn about creating your own objects.  Today, we just need to learn how to use them better.

For example, if you create a UIColor object, like so...
```swift
			  // importing brings in objectes from a seperate library
import UIKit  // all the UI* classes are in the UIKit framework

UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
```
the Playground knows how to render that for you.

properties, methods


### Constructors
Constructors are special functions that create objects.  Objects create themselves, so we'd say, "the class implements the constuctor".  Just above, we called the <code class="code-voice">UIColor</code> constructor <code class="code-voice">UIColor(red:, green:, blue:, alpha:)</code>.  
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
	<span class="title">Look: </span>
	<p></p>
</div>

```swift

```

<div class="fix-block">
	<span class="title">Fix: </span>
	<p></p>
</div>

```swift

```

<div class="write-block">
	<span class="title">Write: </span>
	<p>Learning what you learned above:</p>
	<ol>
	<li></li>
	<li></li>
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

To extract the value of the optional, we must upwrap it.  

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
	println("The String is not nil")
}
</div>

Inside the <code class="code-voice">if</code> now we know *the box has something in it* but we *don't know what it is*.  <code class="code-voice">iAmNil</code> isn't a string, so we can not do this: <code class="code-voice-bad">println("\(iAmNil) is not nil")</code>.  That will work, but it will print out "Optional("not any more") is not nil".

The <code class="code-voice">!</code> force unwraps a conditional.  Once you know the box has something in it, you can use the <code class="code-voice">!</code> to get the value out.

```swift
var iAmNil:String? = "not any more"
if iAmNil != nil {
	println("\(iAmNil!) is not nil")
}
```

**NOTE** if you use <code class="code-voice">!</code> to unwrap a <code class="code-voice">nil</code> value, your program will CRASH with a runtime error.  That's bad.  Always make sure you know an optional has a value, before you unwrap it.  The following mechanisms make that easier.

### Optional Binding

Swift provides a way to check if an optional has a value, and extract it if it does.  This is called *optional binding* and it takes place in conjunction with an <code class="code-voice">if</code> statement.

<div class="code-block">
var optionalValue:Int? = 42
if let unwrappedValue = optionalValue {
	println("the value is \(unwrappedValue)")
	println("which is the same as \(optionalValue!)")
} else {
	println("the value is nil")
}
</div>

This is most frequently done when calling a function or method that returns an optional value.

<div class="code-block">
var string = "forty two"
if let number = string.toInt(){
	println("\(string) converted to integer \(number)")
} else {
	println("\(string) cannot convert to an integer")
}
</div>

Optional binding is a *syntantic sugar* - something that helps us write less code.

Before we get to exercises, here's a little something fun for you.  (NOTE - this is very reckless usage of forced unwrapping.  You should check values of things like the response from a URL.  There are a million reasons that could fail.)

```swift
/*
let url:NSURL? = NSURL(string: "http://24hourreadathon.com/wp-content/uploads/2014/04/hang-in-there.jpg")
let data:NSData? = NSData(contentsOfURL: url!)
let anotherView:UIImage? = UIImage(data: data!)

//XCPCaptureValue("another view", anotherView!)
*/
```

<div class="look-block">
	<span class="title">Look: </span>
	<p></p>
</div>

```swift

```

<div class="fix-block">
	<span class="title">Fix: </span>
	<p></p>
</div>

```swift

```

<div class="write-block">
	<span class="title">Write: </span>
	<p>Learning what you learned above:</p>
	<ol>
	<li></li>
	<li></li>
	</ol>
</div>

```swift

```

# Extra stuff
If you're working at your own pace, and are way ahead of the class, check the following resources out.
 * swift docs: https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language
 * cheat sheet: http://cdn1.raywenderlich.com/wp-content/uploads/2014/06/RW-Swift-Cheatsheet-0_5.pdf
 * http://www.raywenderlich.com/tutorials
 	* http://www.raywenderlich.com/85528/user-accounts-ios-ruby-rails-swift
 	* http://www.raywenderlich.com/81879/storyboards-tutorial-swift-part-1
 	* http://www.raywenderlich.com/77974/making-a-gesture-driven-to-do-list-app-like-clear-in-swift-part-1
 	* Something advanced: http://www.raywenderlich.com/85515/liquidfun-tutorial-1
* swift tricks: http://realm.io/news/favorite-swift-tips-and-tricks-of-2014/
 

# Ideas
 * a more advanced stubbed in playground - bouncing view or something  (animation in view changed)
 * with the timer code
 * strip down part 1 to only what we need

