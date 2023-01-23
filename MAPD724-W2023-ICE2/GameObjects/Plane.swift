import GameplayKit
import SpriteKit

class Plane : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = 2
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -210)
        {
            position.x = -210
        }
        
        if(position.x >= 210)
        {
            position.x = 210
        }
    }
    
    override func Reset()
    {
        position.y = -495
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
