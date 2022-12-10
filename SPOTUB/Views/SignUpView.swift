//
//  SignUpView.swift
//  SPOTUB
//
//  Created by Ali Daho on 12/8/22.
//
import Firebase
import SwiftUI

struct SignUpView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State var navigateScreen : Bool = false
    @State private var username:String = ""
    var body: some View {
        VStack{
            Text("SPOTUB")
                .foregroundColor(Color.blue)
            
            TextField("university.edu Email", text: $email)
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(20.0)
            
            TextField("Username", text: $username)
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(20.0)
            
            SecureField("Enter your password", text: $password)
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(20.0)
            Button(action: {
                register()
            }) {
                Text("Sign Up")
            }   .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(15.0)
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password){result,error in
            if error != nil{
                print(error?.localizedDescription ?? "")
            }else{
                print("succeed")
            }
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
