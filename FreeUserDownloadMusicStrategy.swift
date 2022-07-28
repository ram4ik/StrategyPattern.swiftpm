//
//  File.swift
//  StrategyPattern
//
//  Created by Ramill Ibragimov on 28.07.2022.
//

import Foundation

class FreeUserDownloadMusicStrategy: DownloadMusicStrategyProtocol {
    
    let musicService: MusicService
    
    init(musicService: MusicService) {
        self.musicService = musicService
    }
    
    func download() {
        musicService.downloadPreviewSong()
    }
}
