
import SwiftUI

struct ReserveScreen: View 
{
    var manager = TableManager.tableInstance
    
    var body: some View
    {
        VStack
        {
            HStack
            {
                Button(action: {TryReserve(index:0)})
                {
                    Image("to")
                }
                Spacer()
                Button(action: {TryReserve(index:1)})
                {
                    Image("to2")
                }
            }
            HStack
            {
                Button(action: {TryReserve(index:2)})
                {
                    Image("to")
                }
                Spacer()
                Button(action: {TryReserve(index:3)})
                {
                    Image("to2")
                }
            }
            HStack
            {
                Button(action: {TryReserve(index:4)})
                {
                    Image("to")
                }
                Spacer()
                Button(action: {TryReserve(index:5)})
                {
                    Image("to2")
                }
            }
            HStack
            {
                Button(action: {TryReserve(index:6)})
                {
                    Image("to")
                }
                Spacer()
                Button(action: {TryReserve(index:7)})
                {
                    Image("to2")
                }
            }
        }
        .padding(380)
        .background(Color("skin"))
    }
    
    func TryReserve(index:Int)
    {
        if manager.GetTableStatus(index: index) == false
        {
            manager.tables[index].Reserve(time: 30)
        }
    }
}

#Preview
{
    ReserveScreen()
}

