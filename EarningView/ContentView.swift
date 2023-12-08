//
//  ContentView.swift
//  EarningView
//
//  Created by vignesh kumar c on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
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
                                    .background(
                                        Circle()
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                                            .frame(width: 40, height: 40)
                                    )
                                    .padding(.trailing, 15)
                                
                            }
//                            .padding(.top, 140)
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
                                }
                                 .padding(.top, 10)
                                 Spacer()
                            }
                            .background(Color(hex: "#F2F4FB"))
                            
                            Spacer()
                        }
                    }
            }
        }
        .background(Color(hex: "#F2F4FB"))
    }
}

#Preview {
    ContentView()
}

