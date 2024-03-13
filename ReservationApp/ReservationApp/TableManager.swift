import Foundation

public class TableManager:ObservableObject
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
        for number in stride(from: 0, to: max, by: 1) 
        {
            let newTable = Table(num:number)
            tables.append(newTable)
        }
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
