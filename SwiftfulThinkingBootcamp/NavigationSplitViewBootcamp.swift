//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI


// NavigationSplitView -> iPad,macOS,watchOS

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory : FoodCategory? = nil
    @State private var selectedFruit : Fruits? = nil

    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
//                Button(category.rawValue.capitalized) {
//                    selectedCategory = category
//                }
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            
//            List {
//                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
//                    Button(category.rawValue.capitalized) {
//                        selectedCategory = category
//                        selectedFruit = nil
//                    }
//                }
//            }
            .navigationTitle("Category")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                     
                        List(Fruits.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
//                            Button(fruit.rawValue.capitalized) {
//                                selectedFruit = fruit
//                            }
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)

                        }
                        
//                        List {
//                            ForEach(Fruits.allCases, id: \.rawValue) { fruit in
//                                Button(fruit.rawValue.capitalized) {
//                                    selectedFruit = fruit
//                                }
//                            }
//                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("select a category")
            }
        }
        detail: {
            if let selectedFruit {
                Text("You've selected \(selectedFruit)")
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            }
            else {
                Text("select something")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}


enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruits: String, CaseIterable {
    case apple, mango, orange, banana
}

#Preview {
    NavigationSplitViewBootcamp()
}
