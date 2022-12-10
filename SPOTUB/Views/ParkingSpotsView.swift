//
//  ParkingSpotsView.swift
//  SPOTUB
//
//  Created by Ali Daho on 12/8/22.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ParkingSpotsView: View {
    @State private var userIsLoggedIn:Bool = false
    @State private var userEditProfile:Bool=false
    @State private var pressed = 0
    @State var navigateTo: AnyView?
    
    var body: some View {
        NavigationView {
            if userIsLoggedIn{
                VStack{
                    VStack{
                        HStack{
                            Menu{
     
                                Button(action: {
                                    userEditProfile.toggle()
                                }) {
                                    Text("Edit Profile")
                                        .fontWeight(.bold)
                                }.font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.green)
                                .cornerRadius(15.0)
                                
                                Button(action: {
                                    // Logout
                                    logout()
                                    userIsLoggedIn.toggle()
                                    
                                }) {
                                    Text("Logout")
                                        .fontWeight(.bold)
                                }.font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.green)
                                .cornerRadius(15.0)
                            } label: {
                                Label("Ali Daho", systemImage: "paperplane")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    Text("Parking Avialablity")
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .heavy, design: .default))
                    Text("20 Avialable Spot")
                        .foregroundColor(.green)
                        .font(.system(size: 20, design: .default))
                    
                    ScrollView{
                        VStack{
                            Spacer()
                            HStack{
                                Button(action: {
                                    pressed = 1
                                }) {
                                    Rectangle()
                                        .fill((pressed==1) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }

                                Button(action: {
                                    pressed = 2
                                }) {
                                    Rectangle()
                                        .fill((pressed==2) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }
                                
                                Button(action: {
                                    pressed = 3
                                }) {
                                    Rectangle()
                                        .fill((pressed==3) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }
                            }
                            
                            HStack{
                                Button(action: {
                                    pressed = 4
                                }) {
                                    Rectangle()
                                        .fill((pressed==4) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }

                                Button(action: {
                                    pressed = 5
                                }) {
                                    Rectangle()
                                        .fill((pressed==5) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }
                                Button(action: {
                                    pressed = 6
                                }) {
                                    Rectangle()
                                        .fill((pressed==6) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }
                                }
                            HStack{
                                Button(action: {
                                    pressed = 7
                                }) {
                                    Rectangle()
                                        .fill((pressed==7) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }

                                Button(action: {
                                    pressed = 8
                                }) {
                                    Rectangle()
                                        .fill((pressed==8) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }
                                Button(action: {
                                    pressed = 9
                                }) {
                                    Rectangle()
                                        .fill((pressed==9) ? Color.blue : Color.green)
                                        .frame(width: 100, height: 200)
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 88, weight: .light))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.2)
                                }
                                }

                        }
                    }


                    HStack{
                        Button(action: {
                        }) {
                            Text("Reserver")
                        }.font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                        Button(action: {
                            // Reserve
                            let latitude = 7.065306
                            let longitude = 125.607833
                            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                            
                            if UIApplication.shared.canOpenURL(url!) {
                                  UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                            }
                        }) {
                            Text("Navigate")
                        }.font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                    }

                }.background(Color.black)
            }else{
                SignInView(isUserLoggedOut: $userIsLoggedIn)
            }
        }
        .onAppear{
            Auth.auth().addStateDidChangeListener { auth, user in
                if user != nil{
                    userIsLoggedIn.toggle()
                    
                }
            }
        }
    }
    
    func logout(){
        let firebaseAuth = Auth.auth()
        do{
            try firebaseAuth.signOut()
        }catch let signoutException as NSError{
            print("Error signing out: %@", signoutException)
        }
    }
}

struct ParkingSpotsView_Previews: PreviewProvider {
    static var previews: some View {
        ParkingSpotsView()
    }
}
