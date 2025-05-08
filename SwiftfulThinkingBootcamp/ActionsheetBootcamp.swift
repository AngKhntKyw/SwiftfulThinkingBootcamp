//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 8/5/25.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionsheet: Bool = false
    @State var backgroundColor: Color = .white
    @State var actionOption: ActionSheetOptions = .myPost
    
    enum ActionSheetOptions {
        case myPost, otherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("@username")
                Spacer()
                Button(action: {
                    actionOption = .otherPost
                    showActionsheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionsheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // share logic
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // report logic
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // delete logic
        }
        
        let cancelButton: ActionSheet.Button = .cancel() {
            // delete logic
        }
        let title = Text("What do you like to do?")
        
        switch actionOption {
            
        case .otherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [
                    shareButton, reportButton, cancelButton
                ]
            )
            
        case .myPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [
                    shareButton, deleteButton, cancelButton
                ]
            )
        }
        //        let button1: ActionSheet.Button = .default(Text("change yellow"), action: { backgroundColor = .yellow })
        //        let button2: ActionSheet.Button = .destructive(Text("destructive"), action: { backgroundColor = .red })
        //
        //
        //        return ActionSheet(
        //            title: Text("Title"),
        //            message: Text("this is message"),
        //            buttons: [
        //                button1,button2,.cancel()
        //            ]
        //        )
    
        
    }
}

#Preview {
    ActionsheetBootcamp()
}
