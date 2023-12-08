//
//  FullView.swift
//  EarningView
//
//  Created by vignesh kumar c on 08/12/23.
//

import SwiftUI

struct FullView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading,spacing: 10) {
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
                    .background(Color.white)
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 10) {
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
                        
                        .padding(.top, 30)
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        Spacer()
                            .padding(.bottom, 30)
                        TotalEarningView()
                    }
                    .frame(maxHeight: .infinity)
                    .background(Color(hex: "#F2F4FB"))
                }
            }
        }
    }
}

#Preview {
    FullView()
}
