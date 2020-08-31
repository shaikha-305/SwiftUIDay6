//
//  ContentView.swift
//  SwiftUIDay6
//
//  Created by shaikha aljenaidel on 8/31/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var width: CGFloat = 60
    @State var tapped = false

    var body: some View {
        VStack{
            Spacer()
            Button(action: addItem) {
                ZStack{
                    Capsule()
                    .foregroundColor(Color("Purple"))
                    HStack {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                        if tapped{
                            Text("Add new item")
                                .font(.custom("Avenir Next Demi Bold", size: 18))
                                .foregroundColor(.white)
                            Spacer()
                        }

                    }.offset(x: tapped ? 20 : 0, y: 0)
                    
                }.frame(width: width, height: 60, alignment: .leading)
            }.animation(.interactiveSpring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.5))
            .padding()
        }
    }
    func addItem(){
        tapped.toggle()
        if tapped{
            width = 300
        }else{
            width = 60
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
