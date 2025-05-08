//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most recent"
    let  filterOptions: [String] = ["Most recent","Most popular","Most viewed"]
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)

    }
    
    var body: some View {
        
        //                VStack {
        //                    HStack {
        //                        Text("Age :")
        //                        Text(selection)
        //                    }
        //
        //                    Picker(
        //                        selection: $selection,
        //                        content: {
        //                            ForEach(0..<20) { index in
        //                                Text("\(index)")
        //                                    .font(.headline)
        //                                    .foregroundColor(.red)
        //                                    .tag("\(index)")
        //
        //                            }
        //                        }, label: {
        //                            Text("Text Picker")
        //                        })
        //                    .pickerStyle(.wheel)
        //                    .background(.gray.opacity(0.1))
        //                }
        //
        
        
        ZStack {
            Color.clear
                .ignoresSafeArea(.all)
            
            
            VStack {
                Picker(selection: $selection, content: {
                    ForEach(filterOptions.indices) { index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                    }
                }, label: {
                    
                })
                .pickerStyle(SegmentedPickerStyle())
                
                if selection == "Most recent" {
                    Text("Most recent")
                } else if selection == "Most popular" {
                    Text("Most popular")
                } else {
                    Text("Most viewed")
                }
                
                Spacer()

            }
            
            
            
        }
    }
}

#Preview {
    PickerBootcamp()
}
