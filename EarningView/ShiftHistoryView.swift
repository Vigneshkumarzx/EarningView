//
//  ShiftHistoryView.swift
//  EarningView
//
//  Created by vignesh kumar c on 12/12/23.
//

import SwiftUI

struct ShiftHistoryView: View {
    @State private var tappedViews: Int?
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                HStack(spacing: 20) {
                    Button {
                        // presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(7)
                            .background(Circle().stroke(Color.gray))
                    }
                    .padding(.leading, 20)
                    Spacer(minLength: 6)
                    
                    Text("Shift history")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .font(.system(size: 12))
                        .fontWeight(.medium)
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
                .padding(.bottom, 5)
                Divider().background(Color.gray)

            }
            VStack {
                HStack(spacing: 20) {
                    Image("back")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Spacer(minLength: 0)
                    VStack(spacing: 8) {
                        Text("Weekly History")
                            .font(.custom("Inter-SemiBold", size: 16))
                        Text("30 Oct-05 Nov")
                            .font(.custom("Inter-SemiBold", size: 14))
                    }
                    Spacer(minLength: 0)
                    Image("forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                }
                .padding([.trailing, .leading], 30)
                .padding([.bottom, .top], 10)
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: -15) {
                            DaysButton(day: "Wed", isSelected: true, dayCount: "1", index: 0, tappedViews: $tappedViews )
                            DaysButton(day: "Thu", isSelected: false, dayCount: "2", index: 1, tappedViews: $tappedViews )
                            DaysButton(day: "Fri", isSelected: false, dayCount: "3", index: 2, tappedViews: $tappedViews )
                            DaysButton(day: "Sat", isSelected: false, dayCount: "4", index: 3, tappedViews: $tappedViews )
                            DaysButton(day: "Sun", isSelected: false, dayCount: "5", index: 4, tappedViews: $tappedViews )
                            DaysButton(day: "Mon", isSelected: false, dayCount: "6", index: 5, tappedViews: $tappedViews )
                            DaysButton(day: "Tue", isSelected: false, dayCount: "7", index: 6, tappedViews: $tappedViews )
                        }
                    }
                }
                Divider().frame(width: 350).padding(.leading, 20)
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("06:00 AM -11:00 PM")
                            .font(.custom("Inter-Regular", size: 16))
                            .foregroundColor(.black)
                        HStack(spacing: 10) {
                            Image("incomplete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("Incomplete")
                                .font(.custom("Inter-SemiBold", size: 12))
                                .foregroundColor(Color(hex: "#FF9500"))
                            Spacer()
                        }
                    }
                    Spacer(minLength: 0)
                          .padding(.trailing, 30)
                }
                .padding(.leading, 40)
                .padding([.bottom, .top], 10)
                
                Divider().frame(width: 350).padding(.leading, 20)
                
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("11:00 PM -03:00 PM")
                            .font(.custom("Inter-Regular", size: 16))
                            .foregroundColor(.black)
                        HStack(spacing: 10) {
                            Image("tick")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("Complete")
                                .font(.custom("Inter-SemiBold", size: 12))
                                .foregroundColor(Color(hex: "#008352"))
                            Spacer()
                        }
                    }
                }
                .padding(.leading, 40)
                .padding([.bottom, .top], 10)
                
                Divider().frame(width: 350).padding(.leading, 20)
                
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("07:00 PM - 11:15 PM")
                            .font(.custom("Inter-Regular", size: 16))
                            .foregroundColor(.black)
                        HStack(spacing: 10) {
                            Image("tick")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("Complete")
                                .font(.custom("Inter-SemiBold", size: 12))
                                .foregroundColor(Color(hex: "#008352"))
                            Spacer()
                        }
                    }
                }
                .padding(.leading, 40)
                .padding([.bottom, .top], 10)
                
                Divider().frame(width: 350).padding(.leading, 20)
                
                Spacer()
            }
            .background(Color(hex: "#F2F4FB"))
        }
    }
}

#Preview {
    ShiftHistoryView()
}

struct DaysButton: View {
    let day: String
    var isSelected: Bool = false
    let dayCount: String
    
    let index: Int
    
    @Binding var tappedViews: Int?
    
    var body: some View {
        ZStack {
            VStack(spacing: 6) {
                Text(day)
                    .font(.custom("Inter-SemiBold", size: 11))
                    .foregroundColor(isSelected ? Color.black : Color.gray)
                    .frame(width: 25)
                Text(dayCount)
                    .font(.custom("Inter-SemiBold", size: 14))
                    .foregroundColor(isSelected ? Color.black : Color.gray)
            }
            .onTapGesture {
                tappedViews = index
            }
            .padding(8)
            .overlay (
                RoundedRectangle(cornerRadius: 10)
                    .stroke( tappedViews == index ? Color(hex: "#008352") : Color.gray.opacity(0.9), lineWidth: 2)
            )
            .padding()
            
            if isSelected {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(hex: "#008352"))
                    .frame(width: 40 ,height: 5)
                    .padding(.top, 45)
            }
        }
//        .overlay(
//            isSelected ?
//            Text("1")
//                .foregroundColor(.white)
//                .font(.custom("Inter-Regular", size: 10))
//                .padding(8)
//                .background(Color(hex: "#008352"))
//                .clipShape(Circle())
//                .offset(x: 18, y: -22)
//            : nil
//        )
    }
}
