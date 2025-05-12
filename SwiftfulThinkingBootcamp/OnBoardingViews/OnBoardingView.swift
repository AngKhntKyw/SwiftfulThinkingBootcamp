//
//  OnBoardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 12/5/25.
//

import SwiftUI

struct OnBoardingView: View {
    
    // onBoarding states :
    /*
     0 - welcome screen
     1 - add name
     2 - add age
     3 - add gender
     */
    
    
    @State var onBoardingState: Int = 0
    let transaction: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 18
    @State var gender: String = ""
    
    // for the alert
    @State var alertTile: String = ""
    @State var showAlert: Bool = false
    
    // for appstorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            // content
            ZStack {
                
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transaction)
                case 1:
                    addNameSection
                        .transition(transaction)
                    
                case 2:
                    addAgeSection
                        .transition(transaction)
                    
                case 3:
                    addGenderSection
                        .transition(transaction)
                    
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
                
            }
            
            
            // buttons
            VStack {
                Spacer()
                buttomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text(alertTile))
        })
    }
}

// MARK: COMPONENTS

extension OnBoardingView {
    
    private var buttomButton : some View {
        Text(onBoardingState == 0 ? "SIGN UP" : onBoardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection : some View {
        VStack(spacing: 40) {
            
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find you mathch.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white),
                    alignment: .bottom
                )
            
            Text("This is the #1 app for finding your match online! In this tutorial, we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection : some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            
            TextField("your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection : some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\( String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection : some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            //            HStack {
            //                Text("select a gender")
            //                    .font(.headline)
            //                    .foregroundColor(.white)
            //
            //                Picker(selection: $gender, content: {
            //                    Text("Male")
            //                    Text("Female")
            //                }, label: {
            //                    Text("Select a gender")
            //                })
            //                .pickerStyle(.menu)
            //                .accentColor(.white)
            
            
            Menu {
                Picker(selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Nom-Binary").tag("Non-Binary")
                } label: {
                    Text("gender picker")
                }
            } label: {
                Text(gender.count > 1 ? gender : "Select agender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTIONS

extension OnBoardingView {
    
    func handleNextButtonPressed() {
        // check inputs
        switch onBoardingState {
        case 1 :
            guard name.count >= 3 else {
                showAlert(title: "Your name must be atleast 3 characters long!😅")
                return
            }
            
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select your gender before moving forward! 😅")
                return
            }
        default:
            break
        }
        // go to nect section
        if onBoardingState == 3 {
            // sign in
            signIn()
            
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
    }
    
    func showAlert(title: String) {
        alertTile = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
}


#Preview {
    OnBoardingView()
        .background(.purple)
}

