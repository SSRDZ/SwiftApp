import Foundation

public class Table
{
    public var reserveTime:Float
    public var countTime:Float
    public var isReserve:Bool
    private var timer: Timer?
    
    init() 
    {
        isReserve = false
        countTime = 0
        reserveTime = 10
        
        print("Created Table")
        StartTimer()
    }
    
    public func Reserve(time:Float)
    {
        self.reserveTime = time
        self.isReserve = true
        StartTimer()
    }
    
    public func UnReserve()
    {
        self.countTime = 0
        self.isReserve = false
        self.StopTimer()
    }
    
    public func StartTimer()
    {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
        {
            timer in
            if self.countTime < self.reserveTime && self.isReserve == true
            {
                self.countTime += 1
                print(self.countTime)
            }
            else
            {
                self.StopTimer()
                self.countTime = 0
            }
        }
    }
    
    private func StopTimer()
    {
        timer = nil
        print("StopedTimer")
    }
    
}
