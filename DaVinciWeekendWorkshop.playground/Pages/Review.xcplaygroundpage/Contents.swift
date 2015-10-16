/*:

# Review

## Variables and Constants


## Types
Swift is a *strongly-typed* language, this means the compiler must know what *type* an variable or constant is.  We've been able to skip this, because Swift *implies* the type for you.  Code examples were chosen to avoid this problem while some basics were learned.

All our examples in Part 1 were one of the four types below.

    var anIntValue:Int    = 1
    var aFloatValue:Float = 1.3
    var aBool:Bool        = true
    var someWords:String  = "a string"

So when we wrote, `var isReady = true`, Swift knew it was really `var isReady:Bool = true`.


## Functions

*Functions* are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to "call" the function to perform its task when needed.  Functions allow us to re-use code and make our code readable.

Functions have a *name*, take zero to many *parameters* and have a *return type*.


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
    
    
## Casting
**Casting** is when you change a type from one to another.  
    
    function squareAFloat(floatValue:Float) -> Float {
        return floatValue * floatValue
    }

    var intValue:Int = 10
    
    squareAFloat( Float(intValue) )
    // cast to a Float to pass to the method

## Conditions, Comparison, Logic
We use `if`, `if/else`, `if/elseif` statements (and others) to create conditional flows.

Comparisons and functions that evaluate to `true` or `false` help.

## Loops, Ranges
Support doing sequences of operations.


*/