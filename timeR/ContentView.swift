//
//  ContentView.swift
//  timeR
//
//  Created by swift on 18.01.2023.
//

import SwiftUI

struct ContentView: View {
//    let colours: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
    var body: some View {
        Home()
    }
}



struct Home: View {
    @State var start = false
    @State var to : CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack {
                Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.green.opacity(0.09), style: StrokeStyle(lineWidth: 25, lineCap: .round))
                            .frame(width: 300, height: 300)
                                
                            Circle()
                        .trim(from: 0, to: self.to)
                        .stroke(Color.red, style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 300, height: 300)
                        .rotationEffect(.init(degrees: -90))
                    
                    VStack {
                        Text("\(self.count)")
                            .font(.system(size: 60))
                            .fontWeight(.medium)
                    }
                }
            }
        }
    }
    
}
////        HStack (
////        ){
////            ForEach (
////                1...5,
////                id: \.self
////            ){
//
//
////            VStack () {
////                Text("Text1")
////                Text("Text1")
////                Text("Text1")
////                Text("Text1")
////            }
//        VStack {
////            ZStack {
////                ForEach(0..<colours.count) {
////                    Rectangle()
////                        .fill(colours[$0])
////                        .frame(width: 100, height: 100)
////                        .offset(x: CGFloat($0) * 10.0, y: CGFloat($0) * 10.0)
////                }
////            }
////            Divider()
////            padding(100)
////        ZStack {
////            ForEach(0..<colours.count) {
////                Rectangle()
////                    .fill(colours[$0])
////                    .frame(width: 100, height: 100)
////                    .offset(x: CGFloat($0) * 10.0, y: CGFloat($0) * 10.0)
//
//
//            HStack {
//                VStack {
//                    ZStack (alignment: .bottomLeading){
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 100, height: 50)
//                        Rectangle()
//                            .fill(Color.blue)
//                            .frame(width: 50, height: 100)
//                    }
//                    .border(Color.green, width: 10)
//                    .padding(30)
//                    ZStack (alignment: .bottomLeading){
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 100, height: 50)
//                        Rectangle()
//                            .fill(Color.blue)
//                            .frame(width: 50, height: 100)
//                    }
//                    .border(Color.green, width: 10)
//                    .padding(30)
//                }
//
//                VStack {
//                    ZStack (alignment: .bottomLeading){
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 100, height: 50)
//                        Rectangle()
//                            .fill(Color.blue)
//                            .frame(width: 50, height: 100)
//                    }
//                    .border(Color.green, width: 10)
//                    .padding(30)
//                    ZStack (alignment: .bottomLeading){
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 100, height: 50)
//                        Rectangle()
//                            .fill(Color.blue)
//                            .frame(width: 50, height: 100)
//                    }
//                    .border(Color.green, width: 10)
//                    .padding(30)
//                }
//            }
//
//        }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
