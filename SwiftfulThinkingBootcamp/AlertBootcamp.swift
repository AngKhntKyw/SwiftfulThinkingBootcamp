//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var alertType: MyAlert? = nil
    //    @State var alertTitle: String = ""
    //    @State var alertMessage: String = ""
    
    enum MyAlert {
        case success, error, warnig
    }
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    //                    alertTitle = "Error uploading video"
                    //                    alertMessage = "The video could not be uploaded!"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    //                    alertTitle = "Successfully uploading video 😎"
                    //                    alertMessage = "The video is now public"
                    showAlert.toggle()
                }
                
                Button("Button 3") {
                    alertType = .warnig
                    showAlert.toggle()
                }
                
                Button("Button 4") {
                    showAlert.toggle()
                }
                
            }
//            .alert(isPresented: $showAlert, content: {
//                //            Alert(title: Text("Thank you"), dismissButton: .default(Text("OK"), action: {}))
//                getAlert()
//            })
            
            .alert(isPresented: $showAlert, content: getAlert)
            
        }
    }
    
    
    func getAlert() -> Alert {
        //        Alert(
        //            title: Text("Title"),
        //            message: Text("This is message"),
        //            primaryButton: .destructive(Text("Delete"), action: {
        //                backgroundColor = .red
        //            }),
        //            secondaryButton: .cancel())
        
        
        //        Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("Ok")))
        
        switch alertType {
            
        case .error:
            Alert(title: Text("There is an error."), dismissButton: .default(Text("Ok")))
            
        case .success:
            Alert(
                title: Text("Success Uploading video."),
                message: nil,
                dismissButton: .default(Text("Ok"), action: {
                    backgroundColor = .green
                }))
            
        case .warnig:
            Alert(title: Text("Uploading video has a warning"), message: Text("Retrying to upload"), dismissButton: .default(Text("Ok")))

        default:
            Alert(title: Text("Default."), message: Text("default"), dismissButton: .default(Text("Ok")))

        }
    }
}

#Preview {
    AlertBootcamp()
}
