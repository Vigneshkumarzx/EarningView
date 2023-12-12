//
//  PayoutHistoryView.swift
//  EarningView
//
//  Created by vignesh kumar c on 11/12/23.
//

import SwiftUI

struct PayoutHistoryView: View {
    @State private var payoutDate = "23-Oct-29 Oct"
    var body: some View {
        VStack(spacing: 10) {
            VStack(alignment: .leading) {
                HStack(spacing: 60) {
                       Text("Last week's payout:  " + payoutDate)
                            .font(.custom("Inter-SemiBold", size: 14))
                            .foregroundColor(Color.gray)
                        Image("forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    .padding(.top, 10)
                
                    Text("₹2000")
                        .font(.custom("Inter-Bold", size: 24))
                
                    HStack(spacing: 10) {
                            HStack {
                                Image("tick")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("Payout transferred to bank account- Oct 31," + "\n" + "08:20 AM")
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(2)
                                    .font(.custom("inter-regular", size: 14))
                                    .foregroundColor(.gray)
                                    .fixedSize(horizontal: false, vertical: true)
                                    
                            }
                    }
                
                DividerDotted().padding(.top, 10)
                VStack(alignment: .center) {
                    HStack {
                        Text("Payout history ")
                            .font(.custom("inter-semiBold", size: 14))
                        Image("forward")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding(.bottom, 15)
                    .padding(.leading, 100)
                }
            }
            .padding(.leading, 20)
            .frame(height: 200)
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding()
        .background(Color(hex: "#F2F4FB"))
        

    }
}

#Preview {
    PayoutHistoryView()
}
