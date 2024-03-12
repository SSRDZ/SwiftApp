//
//  SwiftUIView.swift
//  ReservationApp
//
//  Created by admin on 3/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    @Environment(\.dismiss) var dismiss //this is sub view
    @Binding var helloName: String
    @State var headerText:String = "Enter your text"
    
    var body: some View
    {
        VStack
        {
            Text(headerText)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            TextField("Enter text",text:$helloName)
                .textFieldStyle(.roundedBorder)
            HStack
            {
                Spacer()
                Button("Done",action: {Complete()})
            }
            Spacer()
        }
        .padding()
    }
    
    func Complete()
    {
        dismiss()
    }
}

#Preview
{
    SwiftUIView(helloName:.constant("the text"))
}
