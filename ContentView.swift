import SwiftUI

struct ContentView: View {

    @State var userType: UserType = .free
    var musicService: MusicService
    @State var downloadMusic: DownloadMusicStrategyProtocol = FreeUserDownloadMusicStrategy(musicService: MusicService())

    var body: some View {
        VStack {
            Button {
                userType = .free
                setState()
                downloadMusic.download()
            } label: {
                Text("Download preview song")
            }.padding()
            
            Button {
                userType = .paid
                setState()
                downloadMusic.download()
            } label: {
                Text("Download song")
            }.padding()
            
            Button {
                userType = .paidSubscription
                setState()
                downloadMusic.download()
            } label: {
                Text("Download album")
            }.padding()

        }.onAppear {
            downloadMusic.download()
        }
    }
    
    func setState() {
        switch userType {
            
        case .free:
            downloadMusic = FreeUserDownloadMusicStrategy(musicService: musicService)
        case .paid:
            downloadMusic = PaidUserDownloadMusicStrategy(musicService: musicService)
        case .paidSubscription:
            downloadMusic = PaidSubscriptionUserMusicDownloadStrategy(musicService: musicService)
        }
    }
}


