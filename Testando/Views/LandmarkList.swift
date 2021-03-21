//
//  LandmarkList.swift
//  Testando
//
//  Created by Ricardo on 21/03/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List (landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
