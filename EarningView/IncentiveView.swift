//
//  IncentiveView.swift
//  EarningView
//
//  Created by vignesh kumar c on 11/12/23.
//

import SwiftUI

struct IncentiveView: View {
    @State private var shouldShowButton = false
    @State private var progressValue: Float = 0.6
    @State private var totalValue: String = "14"
    @State private var progressComplete: String = "9"
    @State private var incentiveAmountShown: Bool = false
    
    @State private var isTapped = false
    @State public var isButtonVisible = false
    
    private let completionThreshold: Float = 1.0
    var body: some View {
        NavigationView {
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
                        
                        Text("Incentives")
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
                VStack(alignment: .leading, spacing: 10) {
                    Text("Current schemes")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    VStack(alignment: .leading, spacing: 20)  {
                        Text("Daily incentives")
                            .font(.custom("Inter-SemiBold", size: 20))
                            .frame(alignment: .leading)
                        HStack {
                            Text("Total Orders")
                                .font(.custom("Inter-SemiBold", size: 13))
                                .frame(alignment: .leading)
                                .foregroundColor(.gray)
                            Spacer(minLength: 10)
                            Text("9")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .frame(alignment: .leading)
                        }
                     //   HStack {
                           // ProgressView(value: progressValue, total: 1.0)
//                                .frame(height: 10)
//                                .progressViewStyle(LinearProgressViewStyle(tint: Color(hex: "#008352")))
//                                .padding(2)
                               // .frame(width: 220)
//                            if completionThreshold == progressValue {
//                                Image("tick")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 20, height: 20)
//                            }
//                            HStack {
//                                Text(progressComplete)
//                                Text("/")
//                                Text(totalValue)
//                            }
                       // }
                        HStack {
                            Text("Total Earnings")
                                .font(.custom("Inter-SemiBold", size: 13))
                                .frame(alignment: .leading)
                                .foregroundColor(.gray)
                            Spacer(minLength: 10)
                            Text("₹1800")
                                .font(.custom("Inter-SemiBold", size: 16))
                                .foregroundColor(Color(hex: "#008352"))
                        }
                        if incentiveAmountShown {
                            HStack {
                                Text("Incentive Earned")
                                    .font(.custom("Inter-SemiBold", size: 13))
                                    .frame(alignment: .leading)
                                    .foregroundColor(.gray)
                                Spacer(minLength: 10)
                                Text("₹500")
                                    .foregroundColor(Color(hex: "#008352"))
                            }
                        }
                        
                        HStack(spacing: 20) {
                            Text("Get details, click here to understand incentive conditions")
                                .lineLimit(1)
                                .font(.custom("Inter-Medium", size: 10))
                                .foregroundColor(.gray)
                            
                            Button(action: {
                                isTapped.toggle()
                                isButtonVisible.toggle()
                            }, label: {
                                Image(isTapped ? "down_large" : "forward_large")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                            })
                        }
                        
                        if isButtonVisible {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Condition")
                                    .font(.custom("Inter-SemiBold", size: 14))
                                    .foregroundColor(Color(hex: "#008352"))
                                HStack(spacing: 10) {
                                    Image("tick")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                    Text("Do not reject more than 3 orders")
                                        .font(.custom("Inter-Regular", size: 12))
                                }
                                DividerDotted().padding(.top, 10)
                                    .padding([.leading, .trailing], 10)
                                
                                HStack(spacing: 10) {
                                    Image("tick")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                    Text("Complete 14 orders to qualify for a 20% share in your earnings.")
                                        .lineLimit(2)
                                        .font(.custom("Inter-Regular", size: 12))
                                }
                               // .padding(.top, -320)
                                Spacer()
                            }
                            .frame(height: 120)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 80, alignment: .leading)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.leading, 20)
                    
                    
                    
//                    VStack(alignment: .leading, spacing: 20)  {
//                        Text("Daily Minumum Guarantee ")
//                            .font(.custom("Inter-SemiBold", size: 20))
//                            .frame(alignment: .leading)
//                        HStack {
//                            Text("Trip Count")
//                                .font(.custom("Inter-SemiBold", size: 13))
//                                .frame(alignment: .leading)
//                                .foregroundColor(.gray)
//                            Spacer(minLength: 10)
//                            Text("6")
//                                .font(.custom("Inter-SemiBold", size: 14))
//                                .frame(alignment: .leading)
//                        }
//                   //     HStack {
//                           // ProgressView(value: progressValue, total: 1.0)
////                                .frame(height: 10)
////                                .progressViewStyle(LinearProgressViewStyle(tint: Color(hex: "#008352")))
////                                .padding(2)
//                               // .frame(width: 220)
////                            if completionThreshold == progressValue {
////                                Image("tick")
////                                    .resizable()
////                                    .aspectRatio(contentMode: .fit)
////                                    .frame(width: 20, height: 20)
////                            }
////                            HStack {
////                                Text(progressComplete)
////                                Text("/")
////                                Text(totalValue)
////                            }
//                    //    }
//                        HStack {
//                            Text("Total Earnings")
//                                .font(.custom("Inter-SemiBold", size: 13))
//                                .frame(alignment: .leading)
//                                .foregroundColor(.gray)
//                            Spacer(minLength: 10)
//                            Text("₹400")
//                                .font(.custom("Inter-SemiBold", size: 16))
//                                .foregroundColor(Color(hex: "#008352"))
//                        }
//                        if incentiveAmountShown {
//                            HStack {
//                                Text("Guarantee")
//                                    .font(.custom("Inter-SemiBold", size: 13))
//                                    .frame(alignment: .leading)
//                                    .foregroundColor(.gray)
//                                Spacer(minLength: 10)
//                                Text("₹400")
//                                    .foregroundColor(Color(hex: "#008352"))
//                            }
//                        }
//                        
//                        HStack(spacing: 20) {
//                            Text("Get details, click here to understand incentive conditions")
//                                .lineLimit(1)
//                                .font(.custom("Inter-Medium", size: 10))
//                                .foregroundColor(.gray)
//                            
//                            Button(action: {
//                                
//                            }, label: {
//                                Image("forward_large")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 20, height: 20)
//                            })
//                        }
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 80, alignment: .leading)
//                    .padding()
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .padding(.top, 20)
//                    .padding(.leading, 20)
//                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: "#F2F4FB"))
                
            }
        }

    }
}

#Preview {
    IncentiveView()
}
