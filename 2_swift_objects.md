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

## Objects, Classes, Methods, Function
Swift is an *Object Oriented* language.  Variables and constants are actually "objects of a given type".  Objects are described by a <code class="code-voice">class</code>, which we will learn about when we start writing things.

A *Method* is something that an object can *do*.  A method is part of the class, and returns a specific *type*.  A method named <code class="code-voice">hasSomething()</code> will return <code class="code-voice">Bool</code> (or it should).  A method named <code class="code-voice">count()</code> likely returns an <code class="code-voice">Int</code>.

A great starting point is the <code class="code-voice">String</code> class, because we can understand a string is a "string of characters" and the results are easy to see.

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

The class definition on ab object also determines how operators work.  For example, <code class="code-voice">String</code> has
<ul>
	<li><code class="code-voice">+</code> add two strings together <code class="code-voice">var str = "hi " + "there"</code></li>
	<li><code class="code-voice">+=</code> <code class="code-voice">str += " friend"</code></li>
	<li><code class="code-voice">==</code> <code class="code-voice">str == "hi there friend"</code> returns <code class="code-voice">true</code></li>
</ul>

**Casting** is when you change a type from one to another.  You can only add <code class="code-voice">+</code> two strings together.  You can't add a String to an Int.

<div class="code-block">
var str = "favorite number is " + 42  // this won't work
</div>

You must **cast** the Int 42 to a String, like this.

<div class="code-block">
var str = "favorite number is " + String(42)  // ok
</div>

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


## Collections
Swift provides two *collection* types: <code class="code-voice">Array</code> and <code class="code-voice"><Dictionary/code>.  

## Optionals

Nil coalescing operator


## Additional Reading
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

