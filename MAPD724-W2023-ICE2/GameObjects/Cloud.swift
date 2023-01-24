import GameplayKit
import SpriteKit

class Cloud : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //lifecycle functions
    override func Start()
    {
        zPosition = Layer.cloud.rawValue
        alpha = 0.5 //50% transparent
        Reset()
    }
    
    override func Update()
    {
       Move()
        CheckBounds()
    }
    
    
    override func CheckBounds()
    {
        if(position.y <= -902)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        //randomzie the vertical speed
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        //randomzie the horizontal speed
        horizonalSpeed = CGFloat((randomSource?.nextUniform())! * 4.0) - 2.0
        
        //get a random number from -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 524))! - 262
        position.x = CGFloat(randomX)
        
        //get a random number from 902 to 932
        let randomY:Int = (randomSource?.nextInt(upperBound: 30))! + 902
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    func Move()
    {
        position.y -= verticalSpeed!
        position.x -= horizonalSpeed!
    }
    
}

