/*:
[Previous](@previous)

# Variables and Constants

**Constants** are things that don't change.
If we were modeling a car, some constants might be the Year, Make and Model.  

In Swift we declare a constant with the `let` keyword, and can set it to a value with the equal sign `=`.

    let carMake = "Nissan"
    let carModel = "Xtera"
    let carYear = 2004

**Variables** are like constants, except they can change.  

Sticking with our car example, mileage, color and if it's moving could all be variables.

Variables are declared with the `var` keyword and are assigned with `=`.

    var carMileage = 109328.1
    var carColor = "red"
    var carIsMoving = false
    var myCar = Car(make: "Nissan", model: "Xterra", year: 2004);

Variables can change value after assignment, unlike constants.

    let appleCount  = 10                        // a constant
    let bananaCount = 6                         // a constant
    var fruitCount  = appleCount + bananaCount  // a variable, from constants

    let pearCount = 3                           // another constant
    fruitCount = fruitCount + 3                 // update variable by adding to itself
*/

/*:
![Look](Look.png)
> We can use *variables* and *constants* to hold values.  
>
> For now we will stick with mathmatic operations, and holding numbers.
*/

let appleCount  = 10                        // a constant
let bananaCount = 6                         // a constant
var fruitCount  = appleCount + bananaCount  // a variable, from constants

let pearCount = 3                           // another constant
fruitCount = fruitCount + 3                 // update variable by adding to itself

let sodaCount = 4
let eggCount = 1 * 12

let total = fruitCount + sodaCount + eggCount

/*:
![Fix](Fix.png)
> Get rid of the following errors.
>
> These are a bit contrived and lack context because we're just getting started, but take note of the sorts of things that *don't work* in Swift.
*/

let altitude = 1000
//altitude = 999

var speed = "1000mph"

let foo = 1

var something = 7

var anotherThing = 5



/*:
![Write](Write.png)
> These should look familiar.  Let's solve them again, but use constants and variables to make it more clear what is going on.
>
> 1. How many minutes in a week?
> 2. If you are 38 and 1/2 years old, how many days old are you?
> 3. I have 7 pizzas with 8 slices each.  How many slices do each of my 5 friends get?
*/

let minutes_per_hour = 60
let hours_per_day = 24
let days_per_week = 7
let days_per_year = 365

// 1. How many minutes in a week?
let minutes_per_week = minutes_per_hour * hours_per_day * days_per_week

// 2. If you are 38 and 1/2 years old, how many days old are you?
let days_old = 38.5 * Double(days_per_year)

/*:

[Next](@next) we learn a lot more about what a variables and constants really are, and how we can use them. 
*/
