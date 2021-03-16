//
//  ContentView.swift
//  FirstApp
//
//  Created by farkhod on 16.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var total = "2000"
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            Text("Калькулятор чаевых")
                .font(.title)
            
            HStack{
                Text("₽")
                TextField("Итог", text: $total)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalNum = Double(total) {
                Text("Чаевые: ₽\(totalNum * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Вы ввели не верное число")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
