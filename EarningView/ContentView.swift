//
//  ContentView.swift
//  EarningView
//
//  Created by vignesh kumar c on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group {
            ScrollView {
                VStack {
                    NavigationView {
                        VStack(alignment: .leading) {
                            HStack(spacing: 20) {
                                Button {
                                } label: {
                                    Image("back")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .padding(7)
                                        .background(Circle().stroke(Color.gray))
                                        .clipShape(Circle())
                                    
                                }
                                .padding(.leading, 20)
                                Spacer(minLength: 6)
                                Text("Earnings")
                                    .font(.custom("Inter-semiBold", size: 20))
                                    
                                Spacer(minLength: 10)
                                
                                Image("question")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    //.foregroundStyle(.white)
                                    .background(
                                        Circle()
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                                            .frame(width: 40, height: 40)
                                    )
                                    .padding(.trailing, 15)
                                    
                            }
                            Divider().background(Color("#F2F4FB"))
                            VStack {
                                HStack(spacing: 20) {
                                    VStack {
                                        ZStack {
                                            Rectangle()
                                                .fill(Color(hex: "EDEDED"))
                                                .cornerRadius(10)
                                                .frame(width: 150, height: 80)
                                            
                                            Image("money")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 50, height: 50)
                                                .padding()
                                                .background(
                                                    Rectangle()
                                                        .fill(Color.gray.opacity(0.2))
                                                        .frame(width: 20, height: 20))
                                        }
                                        
                                        Text("Incentives")
                                            .font(.custom("inter-semiBold", size: 16))
                                    }
                                    .padding(.leading, 20)
                                    Spacer()
                                        VStack {
                                            ZStack {
                                                Rectangle()
                                                    .fill(Color(hex: "EDEDED"))
                                                    .cornerRadius(10)
                                                    .frame(width: 150, height: 80)
                                                
                                                Image("rating")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 50, height: 50)
                                                    .padding()
                                                    .background(
                                                        Rectangle()
                                                            .fill(Color.gray.opacity(0.2))
                                                            .frame(width: 20, height: 20))
                                            }
                                            
                                            Text("Rate card")
                                                .font(.custom("inter-semiBold", size: 16))
                                          
                                        }
                                        .padding(.trailing, 20)
                                }
                                .padding(.top, 10)
                                Spacer()
                            }
                            .background(Color(hex: "#F2F4FB"))
                            
                            VStack {
                                VStack {
                                    HStack {
                                        Button {
                                            
                                        } label: {
                                            Image("back")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                        }
                                        Text("30 Oct-05 Nov")
                                            .font(.custom("inter-semiBold", size: 14))
                                        
                                        Button {
                                            
                                        } label: {
                                            Image("back")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                        }
                                    }
                                    Text("This week")
                                        .font(.custom("inter-regular", size: 14))
                                        .foregroundColor(.gray)
                                    
                                    DottedDividerFull().padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                                    
                                    HStack(spacing: 150) {
                                        VStack(alignment: .leading, spacing: 6) {
                                            Text("Total earnings")
                                                .font(.custom("inter-regular", size: 12))
                                                .foregroundColor(.gray)
                                            Text("₹2578")
                                                .font(.custom("inter-bold", size: 18))
                                            
                                            HStack {
                                                Image("clock")
                                                    .resizable()
                                                    .frame(width: 10, height: 10)
                                                Text("32h 47m on duty")
                                                    .font(.custom("inter-regular", size: 12))
                                                    .foregroundColor(.gray)
                                            }
                                           
                                        }
                                        
                                        Image("rewards")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            .background(
                                            
                                                Circle()
                                                    .fill(Color(hex: "00965E").opacity(0.1))
                                                    .frame(width: 60, height: 60)
                                            )
                                    }
                                    
                                    HStack {
                                        Image("emoji")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 12, height: 12)
                                        Text("Good job! You're doing great this week!")
                                            .font(.custom("inter-regular", size: 12))
                                            .foregroundColor(.gray)
                                    }
                                    .background(
                                    
                                        Rectangle()
                                            .fill(Color(hex: "00965E").opacity(0.1))
                                            .frame(width: 300, height: 20)
                                            .cornerRadius(10)
                                    )
                                    .padding()
                                    
                                    DottedDividerFull().padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                                    
                                    HStack {
                                        Text("See details")
                                            .font(.custom("inter-semiBold", size: 12))
                                        Image("back")
                                            .resizable()
                                            .frame(width: 10, height: 10)
                                    }
                                }
                                .frame(height: 400)

                            }
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding()
                            .background(Color(hex: "#F2F4FB"))
                            Spacer()
                        }
                        
                    }
                    .ignoresSafeArea(.all)
                }
            }
            
        }
        
    }

    }



#Preview {
    ContentView()
}
