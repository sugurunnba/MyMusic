//
//  ContentView.swift
//  MyMusic
//
//  Created by 高木克 on 2022/03/27.
//

import SwiftUI

struct ContentView: View {
//  音を鳴らすためのSoundPlayerクラスのインスタンスを生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack{
//            背景画像を指定
            Image("background")
//              画面内に収まるようにリサイズする
                .resizable()
//              画面いっぱいになるようにセーフエリア外まで表示されるように指定
                .ignoresSafeArea()
//              アスペクト比(縦横比)を維持して短い辺の長さに合わせてサイズ変更
                .aspectRatio(contentMode: .fill)
            
            HStack{
//                シンバルボタン
                Button(action: {
//                    ボタンをタップしたときのアクション
//                    シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }) {
//                    画像を表示する
                    Image("cymbal")
                } //シンバルボタンここまで
                
//                ギターボタン
                Button(action: {
//　　　　　　　　　　ボタンをタップしたときのアクション
                    soundPlayer.guitarPlay()
                }) {
//                    画像を表示する
                    Image("guitar")
                } //ギターボタンはここまで
            } //HStackはここまで
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
