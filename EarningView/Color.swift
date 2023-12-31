//
//  Color.swift
//  EarningView
//
//  Created by vignesh kumar c on 06/12/23.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
}
    struct VerticalDivider: View {
        var color: Color
        var width: CGFloat
        var height: CGFloat
        
        init(color: Color = .gray, width: CGFloat = 1, height: CGFloat = 20) {
            self.color = color
            self.width = width
            self.height = height
        }
        
        var body: some View {
            Rectangle()
                .fill(color)
                .frame(width: width, height: height)
        }
    }

struct DottedDivider: View {
    var color: Color
    var dotRadius: CGFloat = 1
    var spacing: CGFloat = 4
    var numberOfDots: Int
    var width: CGFloat
    
    var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<numberOfDots) { _ in
                Circle()
                    .fill(color)
                    .frame(width: dotRadius * 2, height: dotRadius * 2)
            }
        }
        .frame(height: width)
    }
}


struct DottedDividerFull: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let startPoint = CGPoint(x: 0, y: geometry.size.height / 2)
                let endPoint = CGPoint(x: geometry.size.width, y: geometry.size.height / 3)
                path.move(to: startPoint)

                for _ in stride(from: 0, to: geometry.size.width, by: 10) {
                    path.addLine(to: CGPoint(x: startPoint.x + 318, y: startPoint.y))
                    path.move(to: CGPoint(x: startPoint.x + 318, y: startPoint.y))
                }
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
            .foregroundColor(Color.gray)
        }
    }
}
