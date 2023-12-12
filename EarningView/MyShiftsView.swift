//
//  MyShiftsView.swift
//  EarningView
//
//  Created by vignesh kumar c on 12/12/23.
//

import SwiftUI

struct MyShiftsView: View {
    
    let daysOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    @State private var selectedDayIndex = 0
    @State private var tappedView: Int?
    @State private var isShiftBooked: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VStack {
                    HStack(spacing: 20) {
                        Spacer()
                        Text("My Shifts")
                            .font(.custom("Inter-Bold", size: 25))
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 20)
                        HStack(spacing: 20) {
                            Image("what")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            Image("history")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 5)
                    Divider().background(Color.gray)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Next week shifts opens on \n02 Nov, Thu, 03:45 PM")
                                .font(.custom("Inter-SemiBold", size: 16))
                        }
                        Spacer(minLength: 1)
                        Image("lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .padding()
                    VStack {
                        Divider()
                            .frame(width: 330, height: 1) // Adjust the height of the divider as needed
                        
                        HStack {
                            Spacer()
                            Text("Shift planner")
                                .font(.custom("Inter-SemiBold", size: 19))
                                .padding([.leading, .trailing], 15)
                                .background(Color(hex: "#F2F4FB"))
                                .padding(EdgeInsets(top: -20, leading: 20, bottom: 0, trailing: 20))
                            Spacer()
                        }
                    }
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: -15) {
                                DayButton(day: "Wed", isSelected: true, dayCount: "1", index: 0, tappedView: $tappedView )
                                DayButton(day: "Thu", isSelected: false, dayCount: "2", index: 1, tappedView: $tappedView )
                                DayButton(day: "Fri", isSelected: false, dayCount: "3", index: 2, tappedView: $tappedView )
                                DayButton(day: "Sat", isSelected: false, dayCount: "4", index: 3, tappedView: $tappedView )
                                DayButton(day: "Sun", isSelected: false, dayCount: "5", index: 4, tappedView: $tappedView )
                                DayButton(day: "Mon", isSelected: false, dayCount: "6", index: 5, tappedView: $tappedView )
                                DayButton(day: "Tue", isSelected: false, dayCount: "7", index: 6, tappedView: $tappedView )
                            }
                        }
                    }
                    
                    VStack {
                        HStack {
                            Spacer()
                            Image("emoji")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("Earn more by booking peak Shifts")
                                .font(.custom("Inter-Regular", size: 14))
                        }
                        .padding(.trailing, 60)
                    }
                    .frame(height: 30)
                    .background(Color(hex: "#008352").opacity(0.2))
                    
                    HStack(spacing: 20) {
                        Text("06:00 AM - 11:00 AM")
                            .font(.custom("Inter-Regular", size: 14))
                            .foregroundColor(.gray)
                        Spacer(minLength: 0)
                        Text("Shift over")
                            .font(.custom("Inter-Regular", size: 14))
                            .foregroundColor(.gray)
                            .padding(.trailing, 30)
                    }
                    .padding(.leading, 40)
                    .padding([.bottom, .top], 10)
                    
                    Divider().frame(width: 350).padding(.leading, 20)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("11:00 AM -03:00 PM")
                                .font(.custom("Inter-Regular", size: 16))
                                .foregroundColor(.black)
                            HStack(spacing: 10) {
                                Image("star")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                Text("Peak Shift")
                                    .font(.custom("Inter-SemiBold", size: 12))
                                    .foregroundColor(Color(hex: "#008352"))
                                Spacer()
                            }
                            
                        }
                        
                        Spacer(minLength: 0)
                        if !isShiftBooked {
                            Button {
                                isShiftBooked.toggle()
                            } label: {
                                Text("Book Shift")
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(hex: "#008352"))
                                    )
                            }
                            .padding(.trailing, 20)
                        }
                        if isShiftBooked {
                            HStack {
                                Text("Booked")
                                    .font(.custom("Inter-SemiBold", size: 14))
                                Image("forward")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.trailing, 20)
                            
                        }
                        //
                        //                        Text("Shift over")
                        //                            .font(.custom("Inter-Regular", size: 14))
                        //                            .foregroundColor(.gray)
                        //                            .padding(.trailing, 30)
                    }
                    .padding(.leading, 40)
                    .padding([.bottom, .top], 10)
                    
                    Divider().frame(width: 350).padding(.leading, 20)
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("03:00 PM - 07:00 PM")
                                .font(.custom("Inter-Regular", size: 16))
                                .foregroundColor(.black)
                            //                            HStack(spacing: 10) {
                            //                                Image("star")
                            //                                    .resizable()
                            //                                    .aspectRatio(contentMode: .fit)
                            //                                    .frame(width: 20, height: 20)
                            //                                Text("Peak Shift")
                            //                                    .font(.custom("Inter-SemiBold", size: 12))
                            //                                    .foregroundColor(Color(hex: "#008352"))
                            //                                Spacer()
                            //                            }
                            
                        }
                        
                        Spacer(minLength: 0)
                        if !isShiftBooked {
                            Button {
                                isShiftBooked.toggle()
                            } label: {
                                Text("Book Shift")
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(hex: "#008352"))
                                    )
                            }
                            .padding(.trailing, 20)
                        }
                        if isShiftBooked {
                            HStack {
                                Text("Booked")
                                    .font(.custom("Inter-SemiBold", size: 14))
                                Image("forward")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.trailing, 20)
                            
                        }
                        //
                        //                        Text("Shift over")
                        //                            .font(.custom("Inter-Regular", size: 14))
                        //                            .foregroundColor(.gray)
                        //                            .padding(.trailing, 30)
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
                                Image("star")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                Text("Peak Shift")
                                    .font(.custom("Inter-SemiBold", size: 12))
                                    .foregroundColor(Color(hex: "#008352"))
                                Spacer()
                            }
                            
                        }
                        
                        Spacer(minLength: 0)
                        if !isShiftBooked {
                            Button {
                                isShiftBooked.toggle()
                            } label: {
                                Text("Book Shift")
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(hex: "#008352"))
                                    )
                            }
                            .padding(.trailing, 20)
                        }
                        if isShiftBooked {
                            HStack {
                                Text("Booked")
                                    .font(.custom("Inter-SemiBold", size: 14))
                                Image("forward")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.trailing, 20)
                            
                        }
                        //
                        //                        Text("Shift over")
                        //                            .font(.custom("Inter-Regular", size: 14))
                        //                            .foregroundColor(.gray)
                        //                            .padding(.trailing, 30)
                    }
                    .padding(.leading, 40)
                    .padding([.bottom, .top], 10)
                    
                    Divider().frame(width: 350).padding(.leading, 20)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: "#F2F4FB"))
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Please note:")
                        .font(.custom("Inter-SemiBold", size: 12))
                    HStack(alignment: .firstTextBaseline, spacing: 10) {
                        Text(".")
                            .font(.custom("Inter-SemiBold", size: 30))
                            .foregroundColor(.gray)
                            
                        Text("Shift earning estimate includes total order earnings,surges, and fixed pay on completing the shift.")
                            .font(.custom("Inter-Regular", size: 14))
                            .foregroundColor(.gray)
                    }.padding(.leading, 20)
                    
                    HStack(alignment: .firstTextBaseline, spacing: 10) {
                        Text(".")
                            .font(.custom("Inter-SemiBold", size: 30))
                            .foregroundColor(.gray)
                            
                        Text("Incentives and Minimum Guarantees( MG) pay will be extra.")
                            .font(.custom("Inter-Regular", size: 14))
                            .foregroundColor(.gray)
                    }.padding(.leading, 20)
                    
                    HStack(alignment: .firstTextBaseline, spacing: 10) {
                        Text(".")
                            .font(.custom("Inter-SemiBold", size: 30))
                            .foregroundColor(.gray)
                            
                        Text("Actual earnings will depend on the number of orders delivered.")
                            .font(.custom("Inter-Regular", size: 14))
                            .foregroundColor(.gray)
                    }.padding(.leading, 20)
                    
                }
                .padding([.trailing, .leading], 30)
            }
        }
    }
}

#Preview {
    MyShiftsView()
}

struct DayButton: View {
    let day: String
    var isSelected: Bool = false
    let dayCount: String
    
    let index: Int
    
    @Binding var tappedView: Int?
    
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
                tappedView = index
            }
            .padding(8)
            .overlay (
                RoundedRectangle(cornerRadius: 10)
                    .stroke( tappedView == index ? Color(hex: "#008352") : Color.gray.opacity(0.9), lineWidth: 2)
            )
            .padding()
            
            if isSelected {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(hex: "#008352"))
                    .frame(width: 40 ,height: 5)
                    .padding(.top, 45)
            }
        }
        .overlay(
            isSelected ?
            Text("1")
                .foregroundColor(.white)
                .font(.custom("Inter-Regular", size: 10))
                .padding(8)
                .background(Color(hex: "#008352"))
                .clipShape(Circle())
                .offset(x: 18, y: -22)
            : nil
        )
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
