//
//  PayoutDetailView.swift
//  EarningView
//
//  Created by vignesh kumar c on 12/12/23.
//

import SwiftUI

struct PayoutDetailView: View {
    @State private var payoutDate = "23-Oct-29 Oct"
    var body: some View {
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
                Spacer(minLength: 2)
                
                Text("Payout Details")
                    .font(.custom("Inter-SemiBold", size: 20))
                    .multilineTextAlignment(.center)
                    
                Spacer()
            }
            .padding(.bottom, 5)
            .padding(.trailing, 60)
            Divider().background(Color.gray)

        }
        VStack {
            VStack(spacing: 10) {
                VStack {
                    VStack(alignment: .center) {
                        Text("30 Oct-05 Nov").font(.custom("Inter-Regular", size: 20))
                            .multilineTextAlignment(.center)
                    }
                    DividerDotted().padding(.top, 10)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("₹2000")
                                .font(.custom("Inter-Bold", size: 24))
                            Text("Payout transferred to bank account: Nov 07, 04:53 AM")
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .font(.custom("inter-regular", size: 14))
                                .foregroundColor(.gray)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        Image("paid")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .padding()
                            .background(
                                Circle().fill( Color(hex: "#008352").opacity(0.1)))
                            .padding(.trailing, 10)
                    }
                    
                    DividerDotted().padding(.top, 20)
                    VStack(alignment: .leading, spacing: 10, content: {
                        HStack {
                            Text("Total earnings")
                                .font(.custom("Inter-Regular", size: 14))
                            Spacer(minLength: 10)
                            Text("₹875O")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .padding(.trailing, 15)
                        }
                        Spacer(minLength: 1)
                        HStack {
                            Text("Paid through floating cash")
                                .font(.custom("Inter-Regular", size: 14))
                            Spacer(minLength: 10)
                            Text("-  ₹6750")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .padding(.trailing, 15)
                        }
                        
                    })
                    .padding([.top, .bottom], 10)
                }
                .padding([.top, .leading], 10)
                .frame(height: 250)
                
            }
            .background(Color.white)
            .cornerRadius(12)
            .padding()
            
            VStack(spacing: 10) {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Reference code").font(.custom("Inter-Regular", size: 14))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.leading)
                                Text("ELWyjwzplrMCnbKtSorm")
                                    .font(.custom("Inter-SemiBold", size: 14))
                                
                            }
                            Spacer(minLength: 1)
                           Text("Success")
                                .font(.custom("Inter-SemiBold", size: 13))
                                .foregroundColor(Color(hex: "#008352"))
                                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                                .background(Color(hex: "#008352").opacity(0.1))
                                .padding(.trailing, 20)
                        }
                        .padding(.top, 20)
                    }
                    DividerDotted().padding(.top, 10)
                    VStack(alignment: .leading, spacing: 20) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Transfer time").font(.custom("Inter-Regular", size: 14))
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Text("04:53 AM, Tuesday, 07 Nov")
                                .font(.custom("Inter-SemiBold", size: 16))
                            
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Bank account").font(.custom("Inter-Regular", size: 14))
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Text("xxxx xxxx 8492")
                                .font(.custom("Inter-SemiBold", size: 16))
                            
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Bank name").font(.custom("Inter-Regular", size: 14))
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Text("Karur Vysya Bank")
                                .font(.custom("Inter-SemiBold", size: 16))
                            
                        }
                        Spacer(minLength: 5)
                    }
                    .padding(.top, 10)
                    .frame(alignment: .leading)
                    Spacer()
                }
                .padding([.top, .leading], 10)
                .frame(height: 300)
                
            }
            .background(Color.white)
            .cornerRadius(12)
            .padding()
            Spacer()
        }
        .background(Color(hex: "#F2F4FB"))
    }
}

#Preview {
    PayoutDetailView()
}
