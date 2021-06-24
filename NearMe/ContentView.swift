//
//  ContentView.swift
//  NearMe
//
//  Created by Anirudh Kannan on 23/6/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var searchText = ""
    var body: some View {
        ZStack {
            //function that's the content argument to ZStack
            Color((.systemGreen))
            VStack {
                Text("NearMe")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                //HStack {
                TextField("Find a product near you", text: $searchText)
                    .padding()
                    .background(Color(.systemGray6))
                    .padding()
                    .cornerRadius(12)
                //}
//                .padding()
//                .background(Color(.systemGray6))
//                .padding(.horizontal)
//                .cornerRadius(12)
            }
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
