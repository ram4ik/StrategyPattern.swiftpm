import SwiftUI

struct ContentView: View {

    @State var userType: UserType = .free
    var musicService: MusicService

    var body: some View {
        VStack {
            Button {
                userType = .free
                downloadMusic()
            } label: {
                Text("Download preview song")
            }.padding()
            
            Button {
                userType = .paid
                downloadMusic()
            } label: {
                Text("Download song")
            }.padding()
            
            Button {
                userType = .paidSubscription
                downloadMusic()
            } label: {
                Text("Download album")
            }.padding()

        }.onAppear {
            downloadMusic()
        }
    }
    
    func downloadMusic() {
        switch userType {
            
        case .free:
            musicService.downloadPreviewSong()
        case .paid:
            musicService.downloadSong()
        case .paidSubscription:
            musicService.downloadAlbum()
        }
    }
}


