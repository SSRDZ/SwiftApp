
//
//  4.swift
//  ReservationApp
//
//  Created by admin on 3/11/24.
//

import SwiftUI

struct ReserveScreen: View {
    var body: some View {
        VStack{
            HStack{
                Button {
                action: do {Complete()}
                } label: {
                    Image("to")
                }
                Button {
                action: do {Complete()}
                } label: {
                    Image("to2")
                }
                
            }
            HStack{
                Button {
                action: do {Complete()}
                } label: {
                    Image("to")
                }
                Button {
                action: do {Complete()}
                } label: {
                    Image("to2")
                }
                
            }
            HStack{
                Button {
                action: do {Complete()}
                } label: {
                    Image("to")
                }
                Button {
                action: do {Complete()}
                } label: {
                    Image("to2")
                }
                
            }
            HStack{
                Button {
                action: do {Complete()}
                } label: {
                    Image("to")
                }
                Button {
                action: do {Complete()}
                } label: {
                    Image("to2")
                }
                
            }
            
        }
        .padding(380)
        .background(Color("skin"))
        
        
    }
    func Complete()
    {
        
    }
}
    
#Preview
    {
    ReserveScreen()
    }

