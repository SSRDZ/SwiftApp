import Foundation

public class TableManager
{
    public var tables : [Table] = []
    public var tableCount:Int
    public var maxTable:Int
    public var selectingTable:Int
    
    init(max:Int)
    {
        tableCount = 0
        maxTable = max
        selectingTable = 0
        let newTable = Table()
        self.tables.append(newTable)
        print("StartManager")
    }
    
    public func ReserveTable(index:Int,time:Float)
    {
        tables[index].Reserve(time:time)
    }
    
    public func UnReserve(index:Int)
    {
        tables[index].UnReserve()
    }
    
    public func GetTableStatus(index:Int) -> Bool
    {
        return tables[index].isReserve
    }
}
