//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .frame(width: 100 , height: 100)
        //            .background(
        ////                .red
        ////                LinearGradient(colors: [.red, .blue, .green,.yellow], startPoint: .top, endPoint: .trailing)
        //                Circle()
        //                    .fill(LinearGradient(colors: [.red, .blue, .green,.yellow], startPoint: .top, endPoint: .trailing)
        //                    )
        //                    .frame(width: 100, height: 100, alignment: .center)
        //            )
        //            .frame(width: 120, height: 120)
        //            .background(
        //                Circle()
        //                    .fill(
        //                        LinearGradient(colors: [.pink, .blue, .cyan,.black], startPoint: .top, endPoint: .trailing)
        //                    )
        //            )
        
        //        Circle()
        //            .fill(.pink)
        //            .frame(width: 100, height: 100 , alignment:  .center)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(.green)
        //                    .frame(width: 110, height: 110)
        //            )
        //
        //        Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Rectangle()
        //                    .fill(.blue)
        //                    .frame(width: 50, height: 50, alignment: .center),
        //                alignment: .topLeading
        //
        //            )
        //            .background(
        //                Rectangle()
        //                .fill(.green)
        //                .frame(width: 150, height: 150),
        //                alignment: .bottomTrailing)
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill( LinearGradient(colors: [.pink, .red], startPoint: .top, endPoint: .trailing))                    .frame(width: 100, height: 100)
                    .shadow(color: .red,radius: 10,x: 0,y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35,height:35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white),
                                alignment: .center
                            )
                        .shadow(color: .red,radius: 10,x: 5,y: 5),
                        alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
