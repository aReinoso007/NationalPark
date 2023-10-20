//
//  LandmarkRow.swift
//  HelloWorld
//
//  Created by Alex Reinoso on 19/10/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        Text(landmark.name)
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
}
