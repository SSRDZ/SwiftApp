//
import Foundation

public class TableManager
{
    public var tables : [Table] = []
    public var tableCount:Int
    public var maxTable:Int
    
    init(max:Int)
    {
        tableCount = 0
        maxTable = max
        var newTable = Table()
        self.tables.append(newTable)
        print("StartManager")
    }
    
    public func ReserveTable(index:Int,time:Float)
    {
        self.tables[index].Reserve(time:time)
    }
    
    public func UnReserve(index:Int)
    {
        tables[index].UnReserve()
    }
}
