//
//  EnvironmantObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 12/5/25.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone","iPad","iMac","Apple Watch"])
    }
}


struct EnvironmantObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)
    }
}


struct DetailView: View {
    
    let selectedItem: String
//    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.red
                .ignoresSafeArea(.all)
            
            // foreground
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .cornerRadius(30)
                })
            
            
            
        }
    }
}


struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
            
        }
    }
}



#Preview {
    EnvironmantObjectBootcamp()
}
