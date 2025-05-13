//
//  AsyncImage.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 13/5/25.
//

/*
 case empty -> No image is loaded
 case success(Image) -> An image is successfully loaded
 case failure(Image) -> An image failed to load with an error
 */


import SwiftUI

struct AsyncImageBootcamp: View {
    
    let imageUrl = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        //        AsyncImage(url: imageUrl, content: { returnImage in
        //            returnImage
        //                .resizable()
        //                .frame(width: 100, height: 100)
        //                .scaledToFit()
        //                .cornerRadius(20)
        //        }, placeholder: {
        //            ProgressView()
        //        })
        
        AsyncImage(url: imageUrl, content: { phase in
            
            switch phase {
                
            case .empty:
                ProgressView()
                
            case .success(let returnImage):
                returnImage
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .cornerRadius(20)
                
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
                
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
                
            }
            
        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
