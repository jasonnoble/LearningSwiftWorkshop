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

*Swift* : a programming language that allows you to write computer programs for iPhone, iPad and OSX machines.

*Syntax* : the rules of how to write valid statements (code) in a given programming language.

*Syntax error* : an misuse of the syntax, which is caught quickly by Xcode.  A Swift program with a syntax error will not compile and therefore will not run.

*Semantic error* : code has correct syntax, but does the wrong thing (including crashing).

*Debugging* : the act of removing errors from a computer program.

## Quick note on errors
**Careful**: as we move through the exercises keep in mind that all the live-code sections of this document have all be syntactically correct or *none* of the code will run.

# Code!

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

<hr/>

# Breathe
Just take a second - that was a lot to cover.  

It may be wise to go back and re-read what we've already covered.
<hr/>

Now we will see how these pieces make working code.

<div class="look-block">
	<span class="title">Look: Comments</span>
	<p>Comments are parts of the source code that are ignored by the compiler.</p>
	<p>They exist for us lowly humans.</p>
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
	<p>Oh noes!  Not all of the below code should be commented out!</p>
	<p>*Fix the snippet so it's clear who the best is.*</p>
	<p>To complete this "Fix" exercise, delete <code class="code-voice">/\*\* FIX 1</code> and <code class="code-voice">\*/</code> to get started.</p>
</div>


```swift
/** FIX 1
println("Who's the best?")
//prinln("I'm the best")
*/
```

NOTE: if you don't fix the above correctly, you may comment out the rest of the source!

<div class="write-block">
	<span class="title">Write: Comments</span>
	<p>Learning what you learned above:</p>
	<ol>
		<li>write some comments</li>
		<li>print out <code class="code-voice">pi</code> and <code class="code-voice">radius</code>.</li>
	</ol>
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
	<p>With the Arithmetic Operations, we can only really look and play with math.</p>
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

4 % 2
// The above line tells us, "4 is divisable by 2 with remainder 0"

// Remember algebra and order of operations?
1 + 1 * 4
(1 + 1) * 4

```

You'll notice we're using only whole, integer values above.  We'll talk more about the different types of number types when we discuss *casting* later on.

For now, let's stick with integer values (numbers with no decimals).

<div class="fix-block">
	<span class="title">Fix: Arithmetic Operations</span>
	<p>Here's a bunch of examples of things you can't do.</p>
	<p>Uncomment these one at a time and see how they fail.</p>
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

Hmmmmm.  That doesn't seem quite right.  Maybe <code class="code-voice">if / elseif</code> is the way to go.


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

var doesLikeRed = true

if doesLikeRed == true {
	println("I like red!")
}

if doesLikeRed {
	println("still like red!")
}
```

Note in the <code class="code-voice">doesLikeRed</code> case above we don't have to compare the variable to true.  The <code class="code-voice">== true</code> is implied.  So looking farther back, you could write <code class="code-voice">if (airTemp < 32) == true</code> but that's just silly.

If you have a <code class="code-voice">Bool</code> value, it can also be used alone.

Also an if statement can be placed inside the clause of another statement.  We call this "nesting" if statements.

<div class="code-block">
if something == true {
	if someOtherThing == true {
		// I should end up here.
	} else {
		// not here
	}
} else {
	// or here
}
</div>

Be warry of too many nested if statements - they can make code very hard to read.

<div class="fix-block">
	<span class="title">Fix: Conditionals</span>
	<p>Most of our earlier examples have been *syntax* errors.  With conditionals, we start seeing semantic errors appear.</p>
	<p>Make sure this code runs AND does what we want.</p>
	<p>Fix an example of a "nested" if statement.</p>
</div>

```swift
/** Fix 1
var willPrintOut = false
if willPrintOut {
	println "make this print" 
}
END Fix 1 **/


/** Fix 2
var willNotPrint = false
if willNotPrint != true {
	println("don't print this. print nothing here.")
}
END Fix 2 **/


/** Fix 3
var valueOne = false
var valueTwo = false
if valueOne {
	prinln("nope - don't print this")
} else if valueTwo {
	println("not me either")
} else {
	println("this should print")
}
END Fix 3 **/

/** Fix 4
var valueThree = false
var valueFour = false
if valueThree {
	if( valueFour {
		println("print this nested guy")
	} else {
		println("not this dude")
	}
} else {
	println)"this is right out")
}
END Fix 4 **/

```

A lot of programming is like the exercise above.  You read the code, you know what it *should do* - what code should run, what the code should do, but it doesn't.  Learning to patiently read code and process what it's doing (and what can go wrong) is a lot of what we do.

<div class="write-block">
	<span class="title">Write: </span>
	<p>Learning what you learned above: Use if/then/else statements to tell me if I can drive home based on how much beer I've had, and how long I've waited.</p>
	<ol>
	<li>If I've had more than 3 beers: print "NO"</li>
	<li>If fewer hours have passed than beers I had: print "NO" </li>
	<li>Otherwise: print "YES"</li>
	</ol>
</div>

```swift

var beerCount = 7
var hoursSinceLastBeer = 2

// write code here.
// NOTE: when in doubt, don't code: call a cab


```

Note in the above example that good names were choosen for variables.  Sure, you could use the variables wrong, but by choosing good names it makes our code more **readable** which is a good thing.

## Logical Operations

Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard logical operators found in C-based languages:
 * Logical NOT <code class="code-voice">!a</code>
 * Logical AND <code class="code-voice">a && b</code>
 * Logical OR  <code class="code-voice">a || b</code>

### Logical NOT Operator

A logical NOT <code class="code-voice">!a</code> operator *flips* the value of a Boolean to it's opposite: <code class="code-voice">true</code> becomes <code class="code-voice">false</code>, <code class="code-voice">false</code> becomes <code class="code-voice">true</code>. 

An <code class="code-voice">!</code> appears directly in front of the value it's negating with no space. This is called a *prefix* operator.

Consider the following snippet...

<div class="code-block">
var supportedFormat = true

if !supportedFormat {
	println("This is not a supported format")
}
</div>

The above statement <code class="code-voice">!if supportedFormat</code> is read, "if not supportedFormat".  We should note that <code class="code-voice">!if supportedFormat</code> is the same as <code class="code-voice">supportedFormat == false</code>.
 
Being careful naming boolean variables can help keep code consice.  Apple uses consistent, active words in a lot of their code. Variable names like <code class="code-voice">isActive</code>, class="code-voice">isReady</code>, class="code-voice">shouldDenyAccess</code> are pretty clear all on their own.

### Logical AND Operator

The logical AND operator <code class="code-voice">a && b</code> creates logical expressions where both values must be <code class="code-voice">true</code> for the overall expression to also be <code class="code-voice">true</code>.

If either value is <code class="code-voice">false</code>, the overall expression will also be <code class="code-voice">false</code>. In fact, if the first value is <code class="code-voice">false</code>, the second value won’t even be evaluated, because it can’t possibly make the overall expression equate to <code class="code-voice">true</code>. This is known as *short-circuit evaluation*.

In this example, both values must be true.

<div class="code-block">
var isReady = true
var isSet = true

if isReady && isSet {
	println("Go!")
} else {
	println("You must be both ready and set before going")
}
</div>


### Logical OR Operator

The logical OR operator <code class="code-voice">a || b</code> creates logical expressions in which only one of the two values has to be <code class="code-voice">true</code> for the overall expression to be <code class="code-voice">true</code>.

Like the Logical AND operator above, the Logical OR operator uses *short-circuit evaluation* to consider its expressions. If the left side of a Logical OR expression is <code class="code-voice">true</code>, the right side is not evaluated, because it cannot change the outcome of the overall expression.

Here, one of the values is <code class="code-voice">true</code> so the expression evaluates to <code class="code-voice">true</code>.

<div class="code-block">
var hasTicket = false
var hasBribeMoney = true

if  hasTicket || hasBribeMoney {
	println("Welcome to the movie")
} else {
	println("no go")
}
</div>

The logical operations can also be combined.  Remember to make your code readable (parenthesis helps with this), but the following is valid.

<div class="code-block">
var knowsPassword = true

var knowsMothersMaiden = false
var knowsFirstStreet = false
var knowsMascot = true

if  knowsPassword && ( knowsMothersMaiden || knowsFirstStreet || knowsMascot ) {
	println("seems legit")
}

// prints "seems legit"
</div>


<div class="look-block">
	<span class="title">Look: Logical Operators</span>
	<p></p>
</div>

```swift
var isFreezing = true
var isWearingScarf = true

if isFreezing && isWearingScarf {
	// both true
	println("good to go")
} else if isFreezing {
	// only isFreezing true
	println("you need a scarf")
} else if isWearingScarf {
	// only isWearingScarf true
	println("it's not that cold.  take off the scarf")
} else {
	// both false
	println("also, good to go")
}

// there are a couple ways to skin this cat

if isFreezing {
	if isWearingScarf {
		println("good to go")
	} else {
		println("you need a scarf")
	}
} else {
	if isWearingScarf {
		println("it's not that cold.  take off the scarf")
	} else {
		println("also, good to go")
	}
}

// this one, is hard to read and confusing, but works

if !isFreezing {
	if !isWearingScarf {
		println("also, good to go")
	} else {
		println("it's not that cold.  take off the scarf")
	}
} else {
	if isWearingScarf {
		println("good to go")
	} else {
		println("you need a scarf")
	}
}

// the NOT ! operator is good for one off expressions
if isFreezing && !isWearingScarf {
	println("I bet you forgot your hat, too")
}

```

Your *coding style* should be clean and easy to read.  Pick good names, and make your code *readable*.  It should read like a story:
 * "If it's freezing and you have a scarf on: good to go"
 * "If it's freezing and you don't have a scarf on: put on a scarf"
 * "If it's not freezing and you don't have a scarf on: good to go"
 * "If isFreezing and you're not wearing a scarf: take cheap jab about hat"


<div class="fix-block">
	<span class="title">Fix: Logical Operators </span>
	<p>The software that provides instructions on keeping our machine running is looking a bit rough.</p>
	<p>Without changing the println statements, fix the slew of errors below.</p>
</div>

```swift
/**

let currentTemp = 900
let isRunning   = true
var maxTemp     = 1200
var minTemp     = 400

if !isRunning {
	if (currentTemp < maxTemp) && (currentTemp > minTemp) {
		println("normal operating conditions")
	} else if currentTemp !> minTemp {
		println("running to cold.  remove water.")
	} else {
		println("runing too hot.  add water.")
	}
} else {
	println("Call Maintenance!")
}
*/
```

<div class="write-block">
	<span class="title">Write: Logical Operators</span>
	<p>Learning what you learned above:</p>
	<ol>
	<li>We need to evaluate what someone has brought with them to the beach.  If they have forgetten something, we need to tell them.</li>
	<li>Soon we will learn more elegant ways of solving problems like this, but it's worth seeing how just 3 parameters makes solving a problem with <code class="code-voice">if</code> statements require quite a lot of code.</li>
	</ol>
</div>

```swift
var hasTowel     = false          // NOTE: you should always know where your towel is
var hasSunscreen = false
var hasShades    = false

// solve like in the isFreezing / wearingScarf LOOK example above


```

Since we're talking about readability, notice the grouping of our variables and use of of whitespace (litterally spaces) to line things up.  That's fine (great even) Swift ignores extra whitespaces in code.


## Loops and Range Operators

We will end this first segment with a discussion of loops, or doing things more than once.

We're skipping a little bit, but here is something cool called *String Interpolation*.  We've been using *Strings*, they are just characters wrapped in double-quotaion marks <code class="code-voice">"</code>.  String interpolation allows us to create strings by inserting or mixing expressions into our litteral text.  This is done with a backslash and parenetesis <code class="code-voice">\\(expression)</code>.

Y'all are sharp, I bet you pick this up just from a few examples.

```swift
var anyNumberAtAll = 42
println ("the value is \(anyNumberAtAll)")

var iAmTrue = true
println ("true is \(iAmTrue)")

println ("math: 2 + 2 = \(2+2)")

var firstNumber = 4
var secondNumber = 2

println("more math: \(firstNumber) + \(secondNumber) = \(firstNumber + secondNumber)")

```

 ### For-In

The <code class="code-voice">for-in</code> loop itterates (or "goes over") a range of things.  For now, we'll look at a range of numbers.  

<div class="code-block">
for index in 1...4 {
	println("\(index) squared is \(index * index)")
}

// 1 squared is 1
// 2 squared is 4
// 3 squared is 9
// 4 squared is 16
</div>

Swift gives us a cool thing called the *closed range operator* <code class="code-voice">...</code> to itterate through a range of numbers, inclusive of both numbers.  So <code class="code-voice">1...3</code> will go 1, 2, 3. <code class="code-voice">4...5</code> will go 4, 5. 

In this example <code class="code-voice">index</code> is set to the first value in the range (1), and the code between the curly braces <code class="code-voice">{ }</code> is executed.  Then <code class="code-voice">index</code> is set to the next value in the range (2), the code is executed again.  It **loops** like this until it gets to the end of the range (4).

Index is a *constant* not a variable, you can not change it's value.  You can use variables to define the range as well.

<div class="code-block">
var start = 1
var end   = 4
for index in start...end {
	println("\(index) squared is \(index * index)")
}

// 1 squared is 1
// 2 squared is 4
// 3 squared is 9
// 4 squared is 16
</div>

This is pretty neat.  You can get each character of a string as well.

<div class="code-block">
for character in "howdy" {
	println( character )
}

// h
// o
// w
// d
// y
</div>

When we learn about *Collections* we will see that for-in works for them as well (which is awesome).


<div class="look-block">
	<span class="title">Look: For-In Loops</span>
	<p>Let's take a look at one of the examples we just used.</p>
	<p>I always use <code class="code-voice">ii</code> as an itterator.</p>
</div>

```swift
var start = 1
var end   = 4
for ii in start...end {
	println("\(ii) squared is \(ii * ii)")
}
```

<code class="code-voice">(4 times)</code> is strange output, huh?  Hover over <code class="code-voice">(4 times)</code> over there on the right.  There are *Quick View* (looks like an eyeball) and *Value History* (white circle with +) buttons.  Click *Value History* and behold the **Timeline** as it appears.  The Timeline gives us console output (at the top) and the ability to watch lines of code.

Also open in the *Console Output* window.  This is the output of all the println() statements we've been making.  If you close this window, just change your code and it will re-open with fresh output.

When we loop, we're printing more than one thing - so there isn't a way to show those lines of output in the gutter, where we've been looking.  In this case, when you click on *Value History* you're given a new window in the timeline that outputs the string for each time the loop executed, and the window is labeled with the line it's evaluating <code class="code-voice">println("\(index) squared is \(index * index)")</code>.

Change the loop above, and watch the output in the Value History window change.  Maybe make it do different math.

<div class="look-block">
	<span class="title">Look A Little More: For-In Loops</span>
	<p>Let's take a look at one of the examples we just used.</p>
	<p>I always use <code class="code-voice">ii</code> as an itterator.</p>
</div>


You can put loops inside of loops, too.  This is called a **nested loop**.  Open a *Quick View* on <code class="code-voice">println("\(ii) * \(jj) = \(ii * ii)")</code> below, or just read it in the *Console Output*.

```swift
// markers can help, if you're watching the Console Output
println("**********************")

var outerMax  = 3
var innerMax  = 4

for ii in 1...outerMax {
	for jj in 1...innerMax {
		println("\(ii) * \(jj) = \(ii * ii)")
	}
}
```

The real power of loops is when you change something that's stays around when the loop is done.  Say we want to calculate a *factorial*, where the facotorial of 5 (5!) is 5 x 4 x 3 x 2 x 1.

```swift
var value   = 5
var factor  = 1   // why do we start with 1?

for ii in 1...value {
	factor = factor * ii
}

println("\(value)! is \(factor)")
```

<div class="fix-block">
	<span class="title">Fix: For-In Loops</span>
	<p>Triange Man, Triangle Man....</p>
	<p>We want to print a triange to the console, by specifying the number of rows.  The following has 4 rows.<p>
		<div class="code-block">
\*
\*\*
\*\*\*
\*\*\*\*</div>
	<p>We have only used the <code class="code-voice">println()</code> command so far.  The <code class="code-voice">print()</code> command is very similar, but it doesn't start a new line.  So <code class="code-voice">println()</code> prints a string to the console, then presses *return* (basically).  <code class="code-voice">print()</code> prints to the console, then DOES NOT press *return*.  Calling <code class="code-voice">println()</code> with no argument (with no string) is just like pressing *return*.</p>
</div>

```swift
/**

var numberOfRows = 10

for ii in numberOfrows...1 {
    var str = ""
    for jj in 1..ii {
        println("*")
    }
    println()
}

*/
```

<div class="write-block">
	<span class="title">Write: For-In Loops</span>
	<p>Learning what you learned above:</p>
	<ol>
	<li>For a range, we want to add up the values of all the even numbers, and the values of all the odd numbers.</li>
	<li>We use modulus <code class="code-voice">%</code> to determine if odd or not.  <code class="code-voice">4 % 2 == 0</code> and <code class="code-voice">5 % 2 == !</code>.</li>
	<li>Remember *modulus* is the *remainder* after a divsion operation.  All even numbers divide by two evenly (with no remainder), odd numbers divided by two always have a remainder of one. </li>
	</ol>
</div>

```swift
var evenSum         = 0
var oddSum          = 0
var startingNumber  = 1
var endingNumber    = 10

// write loop here

evenSum
oddSum
```

 ### For, While and Do While

There are two more loops that we will skip for now, the <code class="code-voice">for</code>, <code class="code-voice">while</code> and <code class="code-voice">do while</code> loops.  For more information on these, check out  Apple's [Control Flow Swift Documentation](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html).  Other Swift language features like Switch are outlined there as well.

# End of Part 1!

