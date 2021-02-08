/*:
 ## Lines
 
 It's fun to operate on one pixel at a time, but you'll have to get more efficient if you want to create more complex graphics.
 
 Start by creating functions to make horizontal and vertical lines. The code of the horizontal line function is partially done for you.
 
 - callout(Exercise): Complete the `hLine(x:y:length:color)` function. Then make a `vLine(x:y:length:color:)` function to draw vertical lines.
 */
func hline(x: Int, y: Int, length: Int, color: Color) {
    for i in 0 ... length - 1 {
        // Set the next pixel along the horizontal line
        display.setPixel(x: x + i, y: y, color: .green)
    }
}

/*:
 - callout(Exercise): Try using your line functions to create a new graphic.
 */
hline(x: 5, y: 1, length: 4, color: .blue)
//hline(x: 3, y: 3, length: 4, color: .green)
//hline(x: 2, y: 2, length: 4, color: .blue)
//hline(x: 1, y: 1, length: 4, color: .green)
//: Next, create rectangular blocks.

//: [Previous](@previous)  |  page 4 of 13  |  [Next: Color Blocks](@next)
