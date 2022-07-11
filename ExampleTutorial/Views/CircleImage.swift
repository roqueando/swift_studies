//
//  CircleImage.swift
//  ExampleTutorial
//
//  Created by Ayaworan on 10/07/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .overlay {
                Circle().stroke(.orange, lineWidth: 4)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("bosque"))
    }
}
