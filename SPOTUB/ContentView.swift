//
//  ContentView.swift
//  SPOTUB
//
//  Created by Ali Daho on 12/7/22.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ContentView: View {
    @State private var userLoggedIn:Bool=false
    var body: some View {
        NavigationView {
            if userLoggedIn{
                ParkingSpotsView()
            }else{
                content
            }
        }
    }
    
    private var content: some View{
        NavigationView {
            VStack{
                Text("SPOTUB")
                    .foregroundColor(.blue)
                    .font(.system(size: 40, weight: .heavy, design: .default))
                NavigationLink(destination: SignInView(isUserLoggedOut: $userLoggedIn))
                {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
                NavigationLink(destination: SignUpView())
                {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
            }
        }
        .onAppear{
            Auth.auth().addStateDidChangeListener { auth, user in
                if user != nil{
                    userLoggedIn.toggle()
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
