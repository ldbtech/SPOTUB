//
//  SignInView.swift
//  SPOTUB
//
//  Created by Ali Daho on 12/8/22.
//

import SwiftUI
import FirebaseAuth
import Firebase
struct SignInView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var userIsLoggedIn:Bool = false
    @State private var showError:Bool = false
    
    @Binding var isUserLoggedOut:Bool
    var body: some View {
        if userIsLoggedIn{
            ParkingSpotsView()
        }else{
            content
        }
        
    }
    
    private var content: some View{
        VStack{
            Text("SPOTUB")
                .foregroundColor(.blue)
                .font(.system(size: 40, weight: .heavy, design: .default))
            TextField("Email", text: $email)
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.leading)
                .textFieldStyle(.plain)
            
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.blue)
            
                
            
            SecureField("Enter your password", text: $password)
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.leading)
                .textFieldStyle(.plain)
                .cornerRadius(20.0)
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.blue)
            
            Button(action: {
                login()
            }) {
                Text("Login")
            }.font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(15.0)
            .offset(y:110)
            .alert(isPresented: $showError) {
                Alert(title: Text("Email/Password Incorrect"))
            }
            
            
            Button (action: {
                
            }) {
                Text("I do not have an account")
                    .bold()
                    .foregroundColor(.blue)
            }.padding()
                .offset(y:110)
                .onAppear{
                    Auth.auth().addStateDidChangeListener { auth, user in
                        if user != nil{
                            userIsLoggedIn.toggle()
                            
                        }
                    }
                }

                
        }
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password){(result, error) in
            if error != nil{
                showError = true
                print(error?.localizedDescription ?? "")
            }else{
                self.isUserLoggedOut = true
                print("result")
                
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    @State static var isUserLoggedOut:Bool = false
    static var previews: some View {
        SignInView(isUserLoggedOut: $isUserLoggedOut)
    }
}
