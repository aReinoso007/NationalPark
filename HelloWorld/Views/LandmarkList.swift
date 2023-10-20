//
//  LandmarkList.swift
//  HelloWorld
//
//  Created by Alex Reinoso on 19/10/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /*
         Lists work with identifiable data
         this can be done in 2 ways:
         1. passing along data and a key path to a property that
         uniquely identifies each element
         2. making the data type conform to the Identifiable
         protocol
         */
        List(landmarks){
            landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
