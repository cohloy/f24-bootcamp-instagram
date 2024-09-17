//
//  PostView.swift
//  instagram
//
//  Created by Teddy Barzyk on 9/17/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            HStack {
                Image(.profilePicture)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(.circle)
                Text("UNC-Chapel Hill")
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 10)
            Image(.postPicture)
                .resizable()
                .scaledToFit()
            HStack(spacing: 16) {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal, 10)
            VStack (alignment: .leading, spacing: 8) {
                Text("154 likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("**UNC-Chapel Hill** The University of North Carolina at Chapel Hill is a public research university in Chapel Hill, North Carolina. Chartered in 1789, the university first began enrolling students in 1795, making it one of the oldest public universities in the United States.")
                    .font(.footnote)
                Text("September 17")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(5)
        }
    }
}

#Preview {
    PostView()
}
