import GameplayKit
import SpriteKit

class Island : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //lifecycle functions
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update()
    {
       Move()
        CheckBounds()
    }
    
    
    override func CheckBounds()
    {
        if(position.y <= -876)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.y = 876
        //get a random number from -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.x = CGFloat(randomX)
        isColliding = false
    }
    
    func Move()
    {
        position.y -= verticalSpeed!
    }
    
}
