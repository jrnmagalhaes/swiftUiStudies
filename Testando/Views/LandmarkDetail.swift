//
//  LandmarkDetail.swift
//  Testando
//
//  Created by Ricardo on 21/03/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 200)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: -130, trailing: 0))
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
