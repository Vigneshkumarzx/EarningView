//
//  TotalEarningView.swift
//  EarningView
//
//  Created by vignesh kumar c on 08/12/23.
//

import SwiftUI

struct TotalEarningView: View {
    var body: some View {
        VStack(spacing: 10) {
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
                    .padding(.top, 10)
                    
                    Text("This week")
                        .font(.custom("inter-regular", size: 14))
                        .foregroundColor(.gray)
                    
                    DividerDotted().padding(.bottom, 10)
                }

                VStack {
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

                }
                
                DividerDotted().padding(.top, 10)
                HStack {
                    Text("See details")
                        .font(.custom("inter-semiBold", size: 12))
                    Image("back")
                        .resizable()
                        .frame(width: 10, height: 10)
                }
                .padding(.bottom, 15)
              
            }
            .frame(height: 250)
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding()
        .background(Color(hex: "#F2F4FB"))
        
    }
}

#Preview {
    TotalEarningView()
}

struct DividerDotted : View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height
                let lineWidth: CGFloat = 1.0
                let spacing: CGFloat = 4.0 // Adjust this value to control the spacing between dots
                
                for i in stride(from: 0, to: width, by: spacing * 2) {
                    path.move(to: CGPoint(x: i, y: 0))
                    path.addLine(to: CGPoint(x: i + spacing, y: 0))
                }
                
                path.closeSubpath()
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5], dashPhase: 2))
            .foregroundColor(Color.gray.opacity(0.9))
            .frame(height: 1)
        }
    }
}
