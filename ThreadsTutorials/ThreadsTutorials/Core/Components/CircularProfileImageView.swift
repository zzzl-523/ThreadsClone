//
//  CircularProfileImageView.swift
//  ThreadsTutorials
//
//  Created by 이지현 on 2023/08/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("Daram")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height:40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
