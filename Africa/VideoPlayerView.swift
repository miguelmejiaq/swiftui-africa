//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Miguel Angel Mejia Quiroga on 14/04/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - properties
    var videoSelected: String
    var videoTitle: String
    //MARK: - body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected , fileFormat: "mp4"))
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}
//MARK: - preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
