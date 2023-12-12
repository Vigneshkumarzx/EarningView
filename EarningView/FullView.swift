//
//  FullView.swift
//  EarningView
//
//  Created by vignesh kumar c on 08/12/23.
//

import SwiftUI

struct FullView: View {
    
    @State  var selectedTab: String = "DayView"
    @Namespace var animation
    
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
                        
                        PayoutHistoryView()
                            .padding(.top, -20)
                        HStack(alignment: .center, spacing: 0) {
                            TabBarItems(details: "DayView", isSystemImage: false, animation: animation, selectedTab: $selectedTab)
                            TabBarItems(details: "WeekView", isSystemImage: false, animation: animation, selectedTab: $selectedTab)
                        }
                        .background(Color.white)
                        
                        if selectedTab == "DayView" {
                            VStack {
                                DayView(date: "Wed, 01 Nov", price: "₹852", time: "07h 18m on duty").frame(maxWidth: .infinity ,maxHeight: .infinity)
                                DayView(date: "Tue, 31 Oct", price: "₹1410", time: "16h 10m on duty").frame(maxWidth: .infinity ,maxHeight: .infinity)
                                DayView(date: "Mon, 30 Oct", price: "₹826", time: "09h 46m on duty").frame(maxWidth: .infinity ,maxHeight: .infinity)
                                HStack(spacing: 20) {
                                    Text("Total earnings")
                                        .font(.custom("Inter-SemiBold", size: 18))
                                        .foregroundColor(.gray)
                                        .padding(.leading, 40)
                                    Spacer(minLength: 0)
                                        Text("₹2578")
                                            .font(.custom("Inter-SemiBold", size: 24))
                                }
                                .padding(.trailing, 50)
                                DividerDotted().padding(.top, 1)
                                    .padding([.leading, .trailing], 30)
                                HStack(spacing: 20) {
                                    Text("Time spent")
                                        .font(.custom("Inter-SemiBold", size: 18))
                                        .foregroundColor(.gray)
                                        .padding(.leading, 40)
                                    Spacer(minLength: 0)
                                        Text("32h 47m on duty")
                                            .font(.custom("Inter-SemiBold", size: 14))
                                            .foregroundColor(.gray)
                                }
                                .padding(.trailing, 50)
                            }
                            .background(Color.white)
                        }
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

struct TabBarItems: View {
    
    var details: String
    var isSystemImage: Bool
    var animation: Namespace.ID
    
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut) {
                selectedTab = details
            }
        }, label: {
            VStack(spacing: 12) {
                Text(details)
                .foregroundColor(selectedTab == details ? .primary : .gray)
                
                ZStack {
                    if selectedTab == details {
                        Rectangle()
                            .fill(Color(hex: "#008352"))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    } else {
                        Rectangle()
                            .fill(Color.clear)
                    }
                }
                .frame(height: 1)
            }
        })
        .background(Color.white)
    }
}

struct DayView: View {
    
    var date: String
    var price: String
    var time: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                Text(date)
                    .font(.custom("Inter-SemiBold", size: 18))
                    .padding(.leading, 40)
                Spacer(minLength: 10)
                HStack(spacing: 20) {
                    Text(price)
                        .font(.custom("Inter-SemiBold", size: 20))
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                }
                .padding(.trailing, 30)
            }
            
            Text(time)
                .font(.custom("Inter-SemiBold", size: 14))
                .padding(.leading, 40)
                .foregroundColor(.gray)
            DividerDotted().padding(.top, 10)
                .padding([.leading, .trailing], 30)
        }
        .padding(.top, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}


