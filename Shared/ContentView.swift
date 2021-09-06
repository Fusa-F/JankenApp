//
//  ContentView.swift
//  Shared
//
//  Created by user on 2021/09/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // グー画像を指定
                Image("gu")
                    // リサイズを指定
                    .resizable()
                    // 画面内に収まるように、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                // チョキ画像を指定
                Image("choki")
                    // リサイズを指定
                    .resizable()
                    // 画面内に収まるように、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
            } else {
                // パー画像を指定
                Image("pa")
                    // リサイズを指定
                    .resizable()
                    // 画面内に収まるように、アスペクト比（縦横比）を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action: {
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(.white)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
//        ContentView()
//            .previewDevice("iPad")
    }
}
