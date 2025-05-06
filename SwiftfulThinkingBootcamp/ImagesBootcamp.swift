//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 6/5/25.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("front")
        // use .template if you wanna change color of image , it only works with Letters with transparent backgroung (png)
//            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
//            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                .circle
//                Circle()
//                RoundedRectangle(cornerRadius: 20)
//                Ellipse()
//            )
        
    }
}

#Preview {
    ImagesBootcamp()
}
