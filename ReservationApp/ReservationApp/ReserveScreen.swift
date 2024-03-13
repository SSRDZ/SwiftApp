
import SwiftUI

struct ReserveScreen: View 
{
    var manager = TableManager(max:8)
    
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
            
                Button(action: {TryReserve(index:2)})
                {
                    Image("to5")
                }
                Spacer()
                
            
            HStack
            {
                Button(action: {TryReserve(index:3)})
                {
                    Image("to3")
                }

                Button(action: {TryReserve(index:4)})
                {
                    Image("to4")
                }
                
            }
            
            HStack
            {
                Button(action: {TryReserve(index:5)})
                {
                    Image("to6")
                }
                Spacer()
                Button(action: {TryReserve(index:6)})
                {
                    Image("to6")
                }
                Spacer()
                Button(action: {TryReserve(index:7)})
                {
                    Image("to6")
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

