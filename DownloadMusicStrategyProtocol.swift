//
//  File.swift
//  StrategyPattern
//
//  Created by Ramill Ibragimov on 28.07.2022.
//

import Foundation

protocol DownloadMusicStrategyProtocol {
    
    var musicService: MusicService { get }
    
    func download()
}
