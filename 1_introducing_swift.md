# Learning to program: Introduction

The purpose of this document is to introduce novices to computer programming.  Programming concepts are introduced slowly through this interactive document (an Apple Playground).

## Swift

Swift is a new programming language from Apple for iOS and OSX development.  It was released to the public in the summer of 2014, and was in development at Apple for a few years prior to that.  Swift is still evolving and changing, but is clearly the future of writing software for Apple's hardware.

## Apple's Playgrounds and Xcode

This file in an Apple **Playground**, and you're viewing it in **Xcode**.  Playgrounds allow you to write Swift code, and get feedback immediately, like this:

```swift
println("Hello world!")
```

Xcode is an *Interactive Development Environment* (IDE): a tool software developers use to write and debug software.  Most iOS and OSX apps are written in Xcode.


# Programming terminology

*Computer program* : series of written instructions that tell a computer what to do.

*Programming language* : a complete set of rules (instructions) that one may write a computer program in.  We write code in a given programming language.

*Object Oriented Programming* : a model of software development that breaks code into functional units, called objects;

*Compiler* : in Swift (and other languages), the compiler transforms the code you write, into something the computer can run.

*Swift* : a programming language that allows you to write computer programs for iPhone, iPad and OSX machines.

*Syntax* : the rules of how to write valid statements (code) in a given programming language.

*Reserved Words* : words the syntax does not allow you to use.  In Swift <code class="code-voice">let</code>, <code class="code-voice">var</code>, <code class="code-voice">true</code>, <code class="code-voice">false</code> are all examples. 

*Syntax error* : an misuse of the syntax, which is caught quickly by Xcode.  A Swift program with a syntax error will not compile and therefore will not run.

*Semantic error* : code has correct syntax, but does the wrong thing (including crashing).

*Debugging* : the act of removing errors from a computer program.

*Statement* : a single piece of code.

## Quick note on errors
**Careful**: as we move through the exercises keep in mind that all the live-code sections of this document have all be syntactically correct or *none* of the code will run.

# Let's Code!

Enough talk, let's see what sorta trouble we've signed up for.

# Comments, Constants, Variables, Types

Comments are lines (or blocks) of of text in your code that are ignored by the compiler, and are for humans who write the software only.  "Commenting out" one line of code uses <code class="code-voice">//</code>, a double forward slash.  Everything after <code class="code-voice">//</code> will be ignored by the compiler and not be executed when the program runs.  Longer comments, that may span many lines start with <code class="code-voice">/\*</code> and continue until a <code class="code-voice">\*/</code> is found.

Constants are things that don't change.  If we were modeling a car, some constants might be the Year, Make and Model.  In Swift we declare a constant with the <code class="code-voice">let</code> keyword.  

<div class="code-block">
let carMake = "Nissan"
let carModel = "Xtera"
let carYear = 2004
</div>

Variables are like constants, except they can change.  Sticking with our car example, mileage, color and if it's moving could all be variables. Variables are declared with the <code class="code-voice">var</code> keyword.  

<div class="code-block">
var carMileage = 109328.1
let carColor = "red"
let carIsMoving = false
var myCar = Car(make: "Nissan", model: "Xterra", year: 2004);
</div>

Every variable and constant is of a given **type**.  Swift automatically infers the type for you, which can be a little confusing since it's magical (something is happening that you can't see).
 * "Nissan" - a **String** of characters, like a word, sentence, name, etc.  They start and end with the double quote sign: <code class="code-voice">"</code>.
 * 2004 - an **Int** or integer value.  a whole number with no faction.
 * 109328.1 - a **Float** or floating-point value.  a number with a fraction part.
 * false - a **Bool** or boolean value.  can only be true or false.
 * myCar - an **Object** in this case a <code class="code-voice">Car</code> object.  (we'll talk about objects later)

There are lots and lots of types, and we will learn more about them later.

### Breathe
Just take a second - that was a lot to cover.  Go back and re-read what's above if you feel completely lost.

Now we will see how these pieces make working code.

<div class="look-block">
	<span class="title">Look: Comments</span>
	<p>Comments are parts of the source code that are ignored at runtime.  They exist for us lowly humans.</p>
</div>

```swift
// This is a one-line comment

/* So is this */

println("This is possible"/* but a very, very bad idea*/);

let pi = 3.14159    // pi is a constant and never changes
var radius = 25     // we'll say this radius is a variable
```

<div class="fix-block">
	<span class="title">Fix: Comments</span>
	<p>Oh noes!  Not all of the below code should be commented out!  Fix the snippet so it's clear who the best is. </p>
	<p>Be sure to hover your cursor over the red circles on the left.  These are the Error Codes Xcode is reporting.</p>
</div>

```swift
/* I'm gonna tell everyone who the best is!
println("I'm the best")
*/

// uncomment this next line, to see what happens  (then comment it back)
// pi = 22/7
// why is this an error?
```

NOTE: if you don't fix the above correctly, you may comment out the rest of the source!

<div class="write-block">
	<span class="title">Write: Comments</span>
	<p>Learning what you learned above:</p>
	<ol><li>write some comments</li>
	<li>print out <code class="code-voice">pi</code> and <code class="code-voice">radius</code>.</li></ol>
</div>

```swift




```

# Basic Operations

We've seen variables and constants, but haven't introduced anything you can *do* with them.  Also, we've seen <code class="code-voice">println()</code> and sorta figured out what that's done.

An *operator* is a special symbol or phrase that you use to check, change, or combine values.  For example, the addition operator ( <code class="code-voice">+</code>) adds two numbers together (as in  <code class="code-voice">let i = 1 + 2</code>).

## Assignment and Arithmetic Operations
<table>
	<tr><th>Operator</th><th>Description</th><th>Example</th><th>Result</th></tr>
	<tr>
		<td><code class="code-voice"> = </code></td>
		<td>assignment - set one value equal to another value or expression</td>
		<td><code class="code-voice">let i = 1</code></td>
		<td>i is equal to 1</td>
	</tr>
	<tr>
		<td><code class="code-voice"> + </code></td>
		<td>addition - add two values together</td>
		<td><code class="code-voice">let i = 1 + 2</code></td>
		<td>i is equal to 3</td>
	</tr>
	<tr>
		<td><code class="code-voice"> - </code></td>
		<td>subtraction - subtract a value from another </td>
		<td><code class="code-voice">let i = 2 - 1</code></td>
		<td>i is equal to 1</td>
	</tr>
	<tr>
		<td><code class="code-voice"> \* </code></td>
		<td>multiplication - multiple two numbers</td>
		<td><code class="code-voice">let i = 5 \* 5</code></td>
		<td>i is equal to 25</td>
	</tr>
	<tr>
		<td><code class="code-voice"> / </code></td>
		<td>division - how many times one value goes into another</td>
		<td><code class="code-voice">let i = 4 / 2</code></td>
		<td>i is equal to 2</td>
	</tr>
	<tr>
		<td><code class="code-voice"> % </code></td>
		<td>remainder - remainder after division operation</td>
		<td><code class="code-voice">let i = 4 % 3</code></td>
		<td>i is equal to 1</td>
	</tr>
	<tr>
		<td><code class="code-voice"> ( ) </code></td>
		<td>parentheses - used to define order of operation</td>
		<td><code class="code-voice">let i = (1 + 1) \* 2</code></td>
		<td>i is equal to 4</td>
	</tr>
</table>

Let's see how assignment and these mathematical operations work in code.

<div class="look-block">
	<span class="title">Look: Arithmetic Operations</span>
	<p></p>
</div>

```swift
1 + 1               // here we add two numbers, but don't store it anywhere
var mathy = 1 + 1   // here we add and store the value
mathy               // a constant or variable by itself will print it's value ->

let constantMathy = mathy  // you can assign a variable to a constant (and vice versa)

// Addition, subtraction and multiplication are all pretty straightforward
41 + 1
43 - 1
6 * 7
43 + -1

// Wanna see something wacky?  Division and modulus!
5 / 2
5 % 2
// The above two lines tell us, "2 goes into 5: 2 times with remainder 1"

// Remember algebra and order of operations?
1 + 1 * 4
(1 + 1) * 4

```

You'll notice we're using only whole, integer values above.  We'll talk more about the different types of number types when we discuss *casting* later on.

For now, let's stick with integer values (numbers with no decimals).

<div class="fix-block">
	<span class="title">Fix: Arithmetic Operations</span>
	<p>Here's a bunch of examples of things you can't do.  Uncomment these one at a time and see how they fail.</p>
	<p>Don't forget to check the error codes before you "fix" each line!</p>
</div>

```swift
//4 = 1 + 3

//1 +
//3

//12/0

//let altitude = 1000
//altitude = 999

//var speed = 1000mph
```

<div class="write-block">
	<span class="title">Write: Arithmetic Operations</span>
	<p>Do you ever miss word problems?  I thought you did!  Let's do some (and be sure to show your work).</p>
	<p>Write code that outputs the answers for the below.</p>

	<ol>
	<li>You have 7 apples.  Suzie Q steals 3 Apples, and 1 is really a pear.  How many apples do you have?</li>
	<li>If I watch 5 episodes of Judge Judy every day, how many episodes would I see in 4 weeks?</li>
	<li>Your 1974 Camero gets 12 miles to the gallon.  If gas costs $2.14 a gallon, how much will gas cost for a 386 mile trip?</li>
	</ol>
</div>

```swift




```


## Comparison Operators 

So math is good, but what we need to be able to make decisions and do different things based on some conditions.  We need to be able to **do stuff** based on **what we know**.

If the temperature is below freezing, wear a jacket.

If cost of your mocha latte is more than the cash in your pocket, order a water.

In programming we combine *comparison operators* with *conditional statements* like the <code class="code-voice">if</code> statement.  A simple <code class="code-voice">if</code> statement looks like this:

<div class="code-block">
if airTemp < 32 {
	println("NorthFace time Boulder!")
}
</div>

But what about other temperatures?  If we have just two conditions, then <code class="code-voice">if / else</code> statements do the trick.

<div class="code-block">
if airTemp < 32 {
	println("NorthFace time Boulder!")
} else {
	println("Shorts time!")
}
</div>

Hmm.  That doesn't seem quite right.  Maybe <code class="code-voice">if / elseif</code> is the way to go.


<div class="code-block">
if airTemp < 32 {
	println("NorthFace time Boulder!")
} else if airTemp < 60 {
	println("Flannel time!")
} else {
	println("Shorts time!")
}
</div>

The **comparisons** above are what makes this possible.  The comparisons are <code class="code-voice">airTemp < 32</code> and <code class="code-voice">airTemp < 60</code>.  Each returns <code class="code-voice">true</code> or <code class="code-voice">false</code> which what we call **booleans**.

These are all the comparison operators and each returns a <code class="code-voice">Bool</code> value.

<table>
	<tr><th>Operator</th><th>Description</th><th>Example</th><th>Result</th></tr>
	<tr>
		<td><code class="code-voice"> == </code></td>
		<td>equals - are two expressions the same</td>
		<td><code class="code-voice">1 = 1</code></td>
		<td>true</td>
	</tr>
	<tr>
		<td><code class="code-voice"> != </code></td>
		<td>not equals - are two expressions not the same</td>
		<td><code class="code-voice">1 = 2</code></td>
		<td>true</td>
	</tr>
	<tr>
		<td><code class="code-voice"> < </code></td>
		<td>less than - is the first expression smaller than the second</td>
		<td><code class="code-voice">1 < 2</code></td>
		<td>true</td>
	</tr>
	<tr>
		<td><code class="code-voice"> > </code></td>
		<td>greater than - is the first expression larger than the second</td>
		<td><code class="code-voice">2 > 1</code></td>
		<td>true</td>
	</tr>
	<tr>
		<td><code class="code-voice"> <= </code></td>
		<td>less than or equal - is the first expression smaller or the same as the second</td>
		<td><code class="code-voice">1 <= 1</code></td>
		<td>true</td>
	</tr>
	<tr>
		<td><code class="code-voice"> >= </code></td>
		<td>greater than or equal - is the first expression larger or the same as the second</td>
		<td><code class="code-voice">1 >= 1</code></td>
		<td>true</td>
	</tr>
</table>

Remember: each part of the <code class="code-voice">if</code> statement must evaluate to either <code class="code-voice">true</code> or <code class="code-voice">false</code>.  

<div class="look-block">
	<span class="title">Look: Conditionals</span>
	<p>Maybe we can do a little more than look this time...</p>
	<p>What happens if you change the airTemp on the first line to 25?  or 50?</p>
	<p>Try setting the airTemp to 32, then getting it to tell you to wear a coat.</p>
</div>

```swift
var airTemp = 105

if airTemp < 32 {
	println("NorthFace time Boulder!")
} else if airTemp < 60 {
	println("Flannel time!")
} else {
	println("Shorts time!")
}

var likeRed = true

if likeRed == true {
	println("I like red!")
}

if likeRed {
	println("still like red!")
}
```

Note in the <code class="code-voice">likeRed</code> case above don't have to compare the variable to true.  The <code class="code-voice">== true</code> is always implied.  So looking farther back, you could write <code class="code-voice">if (airTemp < 32) == true</code> but that's just silly.

If you have a <code class="code-voice">Bool</code> value, it can be used alone.

<div class="fix-block">
	<span class="title">Fix: Conditionals</span>
	<p>Most of our earlier examples have been *syntax* errors.  With conditionals, we start seeing semantic errors appear.</p>
	<p>Make sure this code runs AND does what we want.</p>
</div>

```swift
/** Fix 1

END Fix 1 **/


/** Fix 2

END Fix 2 **/


/** Fix 3

END Fix 3 **/

```

more here

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

more here



## Logical Operations

## Loops and Range Operators

## Types and Conditionals
is keyword

## Strings
String Interpolation
countElements()
.hasPrefix()
.hasSuffix()

Strong typing our code

Nil coalescing operator

