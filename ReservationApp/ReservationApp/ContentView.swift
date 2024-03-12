//
//  ContentView.swift
//  ReservationApp
//
//  Created by admin on 3/11/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var helloName: String = "HAHAHA"
    @State var isShowSheet:Bool = false
    var manager = TableManager()
    
    var body: some View //main program
    {
        ZStack
        {
            Color.red
                .ignoresSafeArea(.all)
            VStack
            {
                Image("Yujiro")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: 1500)
                Text("Hm..hm..\(helloName)")
                    .font(.largeTitle)
                Button("Edit Name",action: {isShowSheet.toggle()})
            }
            .sheet(isPresented: $isShowSheet, content: {SwiftUIView(helloName: $helloName)})
        }
    }
}

#Preview {
    ContentView()
}
