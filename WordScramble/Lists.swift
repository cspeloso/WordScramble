//
//  Lists.swift
//  WordScramble
//
//  Created by Chris Peloso on 1/3/22.
//

import Foundation
import SwiftUI

//  list examples

let people = ["Finn", "Leia", "Luke", "Rey"]

func test() -> some View{
    VStack{
        
        
        
        //  list iterating over an index
        List(0..<5){
            Text("Static row\($0)")
        }
        
        
        
        
        //  list with static rows and dynamic rows
        List{
            Text("Static row")
            
            ForEach(people, id: \.self){
                Text($0)
            }
            
            ForEach(0..<5){
                Text("Static row \($0)")
            }
            
            Text("Static row")
        }
        .listStyle(.grouped)
        
        
        //  dynamic list
        List(people, id: \.self){
            Text($0)
        }
        
        
    }

}
