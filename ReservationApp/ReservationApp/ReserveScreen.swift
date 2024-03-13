
import SwiftUI

struct ReserveScreen: View 
{
    @State var manager = TableManager.tableInstance
    @State var didTap: Bool = true
    
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
                Button(action: {self.didTap.toggle()})
                {
                    Image("to6")
                    .background( didTap ? Color("skin") : Color(.red))
                }
            }
        }
        .padding(380)
        .background(Color("skin") )
    }
    
    func TryReserve(index:Int)
    {
        if manager.GetTableStatus(index: index) == false
        {
            manager.tables[index].Reserve(time: 5)
            print(manager.tables[7].isReserve)
        }
    }
}

#Preview
{
    ReserveScreen()
}

