//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 7/5/25.

// these codes are a little old , move function doesn't work

import SwiftUI

struct ListBootcamp: View {
    
    @State var isFruitsExpanded: Bool = true
    @State var isVeggiesExpanded: Bool = true

    @State var fruits: [String] = ["Apple","Banana","Orange","Mango","Pineapple","Strawberry","Blueberry"]
    @State var veggies: [String] = ["Tomato","Potato","Carrot"]

    var body: some View {
        NavigationView {
            List {
                
                // fruits
                Section(
                    header:
                        HStack {
                            Image(systemName: "flame.fill")
                            Text("Fruits")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)

                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                }
                
                // veggies
                Section(
                    header: Text("Vegitables")) {
                    ForEach(veggies, id: \.self) { vege in
                        Text(vege.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add",action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconet")
    }
}


#Preview {
    ListBootcamp()
}

