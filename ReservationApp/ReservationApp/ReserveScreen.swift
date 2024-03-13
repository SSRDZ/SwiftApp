import Foundation
import SwiftUI

struct ReserveScreen: View 
{
    @State var manager = TableManager.tableInstance
    @State var selected : [Bool] = [TableManager.tableInstance.tables[0].isReserve,
                                    TableManager.tableInstance.tables[1].isReserve,
                                    TableManager.tableInstance.tables[2].isReserve,
                                    TableManager.tableInstance.tables[3].isReserve,
                                    TableManager.tableInstance.tables[4].isReserve,
                                    TableManager.tableInstance.tables[5].isReserve,
                                    TableManager.tableInstance.tables[6].isReserve,
                                    TableManager.tableInstance.tables[7].isReserve,]
    
    var body: some View
    {
        VStack
        {
            HStack
            {
                Button(action: {TryReserve(index:0)})
                {
                    Image("to")
                    .background( selected[0] ? Color(.red) : Color("skin"))
                }
                Spacer()
                Button(action: {TryReserve(index:1)})
                {
                    Image("to2")
                    .background( selected[1] ? Color(.red) : Color("skin"))
                }
            }
            
                Button(action: {TryReserve(index:2)})
                {
                    Image("to5")
                    .background( selected[2] ? Color(.red) : Color("skin"))
                }
                Spacer()
                
            
            HStack
            {
                Button(action: {TryReserve(index:3)})
                {
                    Image("to3")
                    .background( selected[3] ? Color(.red) : Color("skin"))
                }

                Button(action: {TryReserve(index:4)})
                {
                    Image("to4")
                    .background( selected[4] ? Color(.red) : Color("skin"))
                }
                
            }
            
            HStack
            {
                Button(action: {TryReserve(index:5)})
                {
                    Image("to6")
                    .background( selected[5] ? Color(.red) : Color("skin"))
                }
                Spacer()
                Button(action: {TryReserve(index:6)})
                {
                    Image("to6")
                    .background( selected[6] ? Color(.red) : Color("skin"))
                }
                Spacer()
                Button(action: {TryReserve(index:7)})
                {
                    Image("to6")
                    .background( selected[7] ? Color(.red) : Color("skin"))
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
            if selected[index] == false
            {
                manager.tables[index].Reserve(time: 5)
                selected[index].toggle()
            }
            else
            {
                selected[index] = false
            }
            print(manager.tables[index].isReserve)
        }
    }
}

#Preview
{
    ReserveScreen()
}

