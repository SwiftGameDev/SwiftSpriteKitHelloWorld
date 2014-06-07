// import SpriteKit and the Playground
//

import SpriteKit
import XCPlayground

// create a game scene class
//

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        // set the background color
        //
        
        self.backgroundColor = SKColor(
            red: 255,
            green: 0,
            blue: 0,
            alpha: 255)
        
        // create a new label
        //
        
        var myLabel = SKLabelNode()
        
        // assign the label text with a font face of Tahoma and a size of 65 
        // in the center of the frame
        //
        
        myLabel.text = "hello interwebs!"
        myLabel.fontName = "Tahoma";
        myLabel.fontSize = 65
        myLabel.position = CGPoint(
            x:CGRectGetMidX(self.frame),
            y:CGRectGetMidY(self.frame))
        
        // add the label to the scene
        //
        
        self.addChild(myLabel)
    }
}

// create an instance of the game scene
//

let scene = GameScene(
    size: CGSize(
        width: 500,
        height: 500))

// create a view container for the scene
//

let view = SKView(
    frame: NSRect(
        x: 0,
        y: 0,
        width: 500,
        height: 500))

// add the scene to the view
//

view.presentScene(scene)

// show the view in the playground
//

XCPShowView("result", view)
