//
//  FAQView.swift
//  EarningView
//
//  Created by vignesh kumar c on 12/12/23.
//

import SwiftUI

struct FAQView: View {
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
                    .padding(.leading, 10)
                    Text("Frequently asked questions")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                        .padding(.trailing, 30)
                }
                .padding(.bottom, 5)
                Divider().background(Color.gray)
                
            }
            
            VStack {
                VStack(spacing: 15) {
                    HStack {
                        Text("What is My-shifts")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("How does shift booking work in the My-shifts world?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("How many shifts can I book?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("Will I be able to get orders for a shift I have not booked?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("When will shifts be available for booking?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("How can I cancel a shift?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("When can I cancel a shift?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("What happens if I don't turn up for a shift/ don't complete the shift?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                    Divider()
                    HStack {
                        Text("How are the earnings calculated?")
                            .font(.custom("Inter-MeidumBold", size: 15))
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("forward_large")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        })
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .padding()
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#F2F4FB"))
        }
    }
}

#Preview {
    FAQView()
}
