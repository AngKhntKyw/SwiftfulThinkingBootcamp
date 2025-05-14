//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 14/5/25.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17, *) {
            //        ContentUnavailableView("No Internet Connection", systemImage: "wifi.slash", description: Text("Please connect to the interner and try again!"))
                    ContentUnavailableView.search(text: "abcd")
        } else {
            // failback on earlier versions
            // fakecontentavailableview
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}

