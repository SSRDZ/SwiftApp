//
//  home.swift
//  ReservationApp
//
//  Created by admin on 3/12/24.
//

import SwiftUI

struct home: View {
    //var profile = Profile()
    @State var inReserve = false
    var accountManager = AccountManager.accountInstance
    
    var body: some View {
        NavigationView{
            VStack{
                Text(accountManager.selectedName)
                    .font(Font.system(size: 40, design: .default))
                    .padding(.bottom,1 )
                
                Spacer()
                
                Image("brs")
                    .resizable()
                    .frame(width: 300.0, height: 240)
                    .cornerRadius(30)
                Spacer()
                
                
                Text("welcome to MUM!")
                    .padding(.bottom, 100
                    )
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                NavigationLink(destination: ReserveScreen(), isActive: $inReserve){}
                Button("Let's Go!!             ",action: {Complete()})
                    .buttonStyle(.bordered)
                    .foregroundColor(.white)
                    .background(.brown)
                    .cornerRadius(10)
                    .padding(.bottom, 100)
                
            }
            .padding(45)
            .background(Color("skin"))
        }
        .navigationBarHidden(true)
    }
    func Complete()
    {
        inReserve = true
    }

}

#Preview {
    home()
}
