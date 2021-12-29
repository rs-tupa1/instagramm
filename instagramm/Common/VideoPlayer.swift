//
//  VideoPlayer.swift
//  instagramm
//
//  Created by Anh Tú on 29/12/2564 BE.
//

import SwiftUI
import AVKit
import AVFoundation

struct PlayerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }

    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(frame: .infinite)
    }
}

class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        let asset = AVAsset(url: URL(string: "https://rr8---sn-42u-i5ols.googlevideo.com/videoplayback?expire=1640781967&ei=LwTMYdrzGf-O6dsPgYyN4Ac&ip=45.192.146.52&id=o-AEoLMSoHpel2fGQy988BObMqgwLlTsgFOZ70VEfJNACx&itag=134&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=198196&dur=8.833&lmt=1637694128792535&keepalive=yes&fexp=24001373,24007246&c=ANDROID&txp=6316224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgXVJFX0IGnFqgYQ43Q3PnbPmMeL5UhiASTfjswStTV-sCIQDza7O29aSW5lkKQNcYVOGjeU5X7-Uc8CvR1N4lgN0LVw%3D%3D&redirect_counter=1&rm=sn-5hnel77e&req_id=5b8d387d9cd9a3ee&cms_redirect=yes&ipbypass=yes&mh=No&mip=118.70.170.147&mm=31&mn=sn-42u-i5ols&ms=au&mt=1640767986&mv=m&mvi=8&pl=21&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIhAP-oyNispVszWqMdbO-q0cQH2QY0J5-b-LukSwV_WsYyAiAO9MOk_F6oabDA1GCq3ev2NL4dOq9uuM7ByQJ4LkPiwg%3D%3D")!)
        let item = AVPlayerItem(asset: asset)
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        // Start the movie
        player.play()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}
