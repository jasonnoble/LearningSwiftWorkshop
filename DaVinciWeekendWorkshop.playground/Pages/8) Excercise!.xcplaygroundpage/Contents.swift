/*:
[Previous](@previous)

# "Real" playground
Our last activity today will be to complete an iOS app, [Rocket App](https://github.com/hollarab/LearningSwiftRocketApp).

But first, lets look at the logic and method we will need.

Press `CMD + OPT + Enter` to show the Assitant Editor

Read the code below, and uncomment the last line to make it run.

*/

import XCPlayground
import UIKit
import Foundation

// Why imported twice?
import Foundation
import UIKit

class RocketHelper:NSObject {
    var timer:NSTimer?           // creates our run loop
    var distance:Float = 0.0     // distance travelled
    
    let distancePerTick:Float = 2 // how far it moves each tick
    
    var parent:UIView?
    var child:UIView?
      var child2:UIView?
    
    override init() {
        /** TODO:
        start blue square at bottom of screen */
        
        parent = UIView(frame: CGRectMake(0, 0, 100, 200))
        parent?.backgroundColor = UIColor.redColor()
        child = UIView(frame: CGRectMake(0, 150, 50, 50))
        child?.backgroundColor = UIColor.blueColor()
        parent?.addSubview(child!)

      child2 = UIView(frame: CGRectMake(50, 150, 50, 50))
      child2?.backgroundColor = UIColor.greenColor()
      parent?.addSubview(child2!)
    }
    
/*:
    The rest of the class can be used to play with and move to the Rocket App 
*/
    
    func startTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: "timerFired", userInfo: nil, repeats: true)
    }
    
    func stopTimer() {
        timer?.invalidate()
        distance = 0
    }
    
    func timerFired() {
        distance += distancePerTick
        print(distance)
        
        var frame = child!.frame
//        frame.origin.x -= CGFloat(distancePerTick)
        frame.origin.y -= CGFloat(distancePerTick)
      if frame.origin.y < -50 {
        frame.origin.y = 150
      }
        child!.frame = frame

      var frame2 = child2!.frame
      //        frame.origin.x -= CGFloat(distancePerTick)
      frame2.origin.y -= CGFloat(distancePerTick) * 2
      if frame2.origin.y < -50 {
        frame2.origin.y = 150
      }

      child2!.frame = frame2

        /** Can you make the square reset when it goes off the screen? */
    }
}

// call constructor, make new object
let helper = RocketHelper()

// Show the parent view so we can see things move
XCPlaygroundPage.currentPage.liveView = helper.parent!

/** Uncomment NEXT line to let the playground run */
helper.startTimer()

