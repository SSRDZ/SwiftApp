//
//  home.swift
//  ReservationApp
//
//  Created by admin on 3/12/24.
//

import SwiftUI

struct home: View {
    var profile = Profile()
    var body: some View {
        
        VStack{
            
            Image("brs")
                .resizable()
                .frame(width: 300.0, height: 185.25)
                .cornerRadius(30)
                Spacer()
                
            
            Text(profile.name)
                .font(Font.system(size: 20, design: .default))
                .padding(.bottom,1 )
                Spacer()
            
            Image("logo2")
                .resizable()
                .frame(width: 300.0, height: 250)
                .cornerRadius(30)
            
            Text("welcome to MUM")
                .padding(.bottom, 100
                )
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            Button("start             ",action: {Complete()}) //อย่าลืมเปลี่ยนเป็นฟังชันไซน์อิน
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(10)
                .padding(.bottom, 100)
            
               
          




            
                

            
        }
        .padding(45)
        .background(Color("skin"))
    }
    func Complete()
    {
        
    }

}

#Preview {
    home()
}
