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
                .padding(.bottom, 350)
                Spacer()
                
               
          




            
                

            
        }
        .padding(45)
        .background(Color("skin"))
    }
}

#Preview {
    home()
}
