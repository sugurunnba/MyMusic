//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 高木克 on 2022/03/27.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
//    シンバルの音源データの取り込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
//    ギターの音源データ取り込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data

//    シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
//    ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay(){
        do{
//        シンバル用のプレイヤーに音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
//        シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    func guitarPlay(){
        do{
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
    
}
