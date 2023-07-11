//
//  ContentView.swift
//  First
//
//  Created by Константин Лопаткин on 11.07.2023.
//

import SwiftUI

struct ContentView: View {
    @Namespace var tabAnimation
    @State var select = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 80) {
                HStack {
                    ForEach(0...2, id: \.self) { item in
                        Text("\(item)")
                            .font(.title)
                            .foregroundColor(select == item ? .white : .gray)
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(
                                Group {
                                    if select == item {
                                        RoundedRectangle(cornerRadius: 16)
                                            .fill(.blue)
                                            .matchedGeometryEffect(id: "tab", in: tabAnimation)
                                    }
                                }
                            )
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    select = item
                                }
                            }
                    }
                }
                .frame(maxWidth: .infinity)
                
                if select == 1 {
                    bigRectangleView
                } else {
                    smallRectangleView
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    var smallRectangleView: some View {
        HStack(spacing: 16) {
            customRectangle(size: 100)
            Text("Rectangle")
                .font(.title)
                .matchedGeometryEffect(id: "text", in: tabAnimation)
        }
    }
    
    var bigRectangleView: some View {
        VStack {
            customRectangle(size: 150)
            Text("Rectangle")
                .foregroundColor(.red)
                .font(.title)
                .matchedGeometryEffect(id: "text", in: tabAnimation)
        }
    }
        
        func customRectangle(size: CGFloat) -> some View {
            Image("sky")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .matchedGeometryEffect(id: "image", in: tabAnimation)
                .frame(width: size, height: size, alignment: .center)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
