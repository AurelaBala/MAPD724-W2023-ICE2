protocol GameProtocol
{
    //start / initializer
    func Start()
    
    //update
    func Update()
    
    //check the bounds (if the position is outside of the screen)
    func CheckBounds()
    
    //reset method
    func Reset()
    
}
