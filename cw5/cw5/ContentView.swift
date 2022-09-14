//
//  ContentView.swift
//  cw5
//
//  Created by AIR on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emoji = ["🙂", "😌", "🤨", "😡", "😌"]
    @State var largEmoji = ""
    
    var body: some View {
        
        VStack{
            Text ("اختار الايموجي الي يعبر عنك اليوم")
                .font(.title)
                .fontWeight(.semibold)
            
            Text(largEmoji)
                .font(.largeTitle)
              
                .padding()
                
            
            
            ScrollView(.horizontal){
            HStack{
                ForEach (emoji, id: \.self){
                emoji in
                
                
                
                    Text(emoji)
                        
                        .background(Color.yellow)
                        .padding(5)
                    
                        .onTapGesture {
                            largEmoji = emoji
                            
                        }
                }
                    
                    }
                
                
                   }
            
        }
        
               }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
