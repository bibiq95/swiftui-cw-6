//
//  ContentView.swift
//  day3
//
//  Created by alqattan on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var hight : String = ""
    @State var weight : String = ""
    @State var bmi =  0.0
    var body: some View {
       
            VStack{
               
                    Text ("مرحبا بك بحاسبة ال BMI").font(.largeTitle).bold()
                
               
                
                
                TextField("الطول بالمتر", text: $hight)
                    .padding()
                TextField("الوزن بالكيلو جرام", text: $weight)
                    .padding()
                Button ( action:{ bmi =  (Double (weight) ?? 0 ) / ( Double( hight ) ??  0) *  ((Double (hight) ?? 0 ))
                
                }
                         , label: { Text("احسب")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Capsule())
                            
                    
                    
                })
                
                Text(" bmi = \(bmi)")
                    .padding(.top)
            
        }
        }
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
