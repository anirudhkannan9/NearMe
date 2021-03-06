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
    @State var isSearching = false
    
    var body: some View {
        ZStack {
            //function that's the content argument to ZStack
            Color((.systemGreen))
            VStack {
                Text("NearMe")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                SearchBar(searchText: $searchText, isSearching: $isSearching)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .colorScheme(.dark)
    }
}

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            HStack {
            TextField("Find a product near you", text: $searchText)
                .padding(.leading, 24)
            }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)
                .padding()
                .onTapGesture(perform: {
                    isSearching = true
                    
                })
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Spacer()
                        
                        if isSearching {
                            Button(action: { searchText = ""}, label: {
                                Image(systemName: "xmark.circle")
                            })
                        }
                    }
                    .padding(.horizontal, 32)
                    .foregroundColor(.black)
                ).transition(.move(edge: .trailing))
                 .animation(.easeIn)
            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""
                }, label: {
                    Text("Cancel")
                        .padding(.trailing, 15)
                        //.padding(.leading, 10)
                        .foregroundColor(.black)
                })
                .transition(.move(edge: .trailing))
                .animation(.easeIn)
            }
        }
    }
}
