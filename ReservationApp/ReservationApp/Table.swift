import Foundation



public class Table
{
    public var reserveTime:Float
    public var countTime:Float
    public var isReserve:Bool
    public var counter:Int
    private var timer: Timer?
    
    
    init(num:Int)
    {
        isReserve = false
        countTime = 0
        reserveTime = 10
        counter = num
        
        print("Created Table : ", num)
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
        print(self.isReserve)
    }
    
    public func StartTimer()
    {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
        {
            timer in
            if self.countTime < self.reserveTime && self.isReserve == true
            {
                self.countTime += 1
                print(self.countTime,self.isReserve)
            }
            else
            {
                self.UnReserve()
            }
        }
    }
    
    private func StopTimer()
    {
        timer?.invalidate()
        timer = nil
        print("StopedTimer")
    }
    
}
