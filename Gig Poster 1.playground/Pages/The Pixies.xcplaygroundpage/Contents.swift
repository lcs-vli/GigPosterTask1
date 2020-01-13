//: # Gig Poster 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)

//set the canvas colour
canvas.fillColor = limeGreen
canvas.drawRectangle(at: Point(x: 0,y: 0), width: 400, height: 600)

//print title
canvas.drawText(message: "prixies", at: Point(x:15,y:410), size: 60)


//print the lines above the title
canvas.drawText(message: "saturday", at: Point(x:14,y:550), size: 10)
canvas.drawText(message: "december 13 1986", at: Point(x:14,y:535), size: 10)
canvas.drawText(message: "9 pm over 21", at: Point(x:14,y:520), size: 10)
canvas.drawText(message: "at the rat", at: Point(x:270,y:550), size: 10)
canvas.drawText(message: "528 commonwealth", at: Point(x:270,y:535), size: 10)
canvas.drawText(message: "boston, mass.", at: Point(x:270,y:520), size: 10)

//print the white lines beside the title
canvas.textColor = offWhite
canvas.drawText(message: "with", at: Point(x:270,y:450), size: 14)
canvas.drawText(message: "throwing muses", at: Point(x:270,y:435), size: 14)
canvas.drawText(message: "dig dipper", at: Point(x:270,y:420), size: 14)

//draw the black block
canvas.fillColor = black
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 400)

//draw green circles
canvas.fillColor = limeGreen
canvas.drawShapesWithBorders = false
for hengcircle in stride(from: 0, through: 400, by: 40){
    for shucircle in stride(from: 0, through: 400, by: 40){
        canvas.drawEllipse(at: Point(x: hengcircle, y: shucircle), width: 35, height: 35)
    }
}

//draw the white circle
for circle in stride(from: 40, through: 360, by: 40){
    canvas.fillColor = offWhite
    canvas.drawShapesWithFill = true
    canvas.drawEllipse(at: <#T##Point#>, width: <#T##Int#>, height: <#T##Int#>)
}

//print the reference lines
for shuline in 1...7{
    canvas.drawLine(from: Point(x: shuline * 50,y: 0), to: Point(x: shuline * 50,y: 600))
}

for hengline in 1...11{
    canvas.drawLine(from: Point(x: 0,y: hengline * 50), to: Point(x: 400,y: hengline * 50))
}
/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

