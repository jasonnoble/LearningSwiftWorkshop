import UIKit
import XCPlayground

let width = 250
let height = 300

class Ticker: NSObject {
    var timer:NSTimer?
    var ticks:Int = 0
    
    var parent:UIView?
    var child:UIView?
    
    override init() {
        parent = UIView(frame: CGRectMake(0.0, 0.0, CGFloat(width), CGFloat(height)))
        parent?.backgroundColor = UIColor.redColor()
        child = UIView(frame: CGRectMake(0, 0, 50, 50))
        child!.center = parent!.center
        child?.backgroundColor = UIColor.blueColor()
        parent?.addSubview(child!)
    }
    
    func start() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("timerFired"), userInfo: nil, repeats: true)
    }
    
    func stop() {
        timer?.invalidate()
    }
    
    func timerFired() {
        ticks++;
        
        var frame = child!.frame
        var center = child!.center
        center.x = center.x - 1
        center.y = center.y + 3
        child!.center = center
        
        var color = child!.backgroundColor
        
    }
    
    func parentView() -> UIView? {
        return parent
    }
}

var ticker = Ticker()
ticker.start()

var view = ticker.parentView()
view!
XCPShowView("view", view!)

XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)
