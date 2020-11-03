//
//  SecondPage.swift
//  ios_data_binding
//
//  Created by mac on 2020/11/3.
//

import SwiftUI

struct SecondPage: View {
    @State private var showAlert = false
    var gender_pic = ["狂狼勇士男","狂狼勇士女","龍魔導士男","龍魔導士女","精靈遊俠男","精靈遊俠女","幻影俠盜男","幻影俠盜女","夜光男","夜光女","隱月男","隱月女"]
    @Binding var showSecondPage: Bool
    @Binding var selectRole: Int
    @Binding var selectGender: String
    @Binding var bgColor: Color
    //@Binding var heigh: Int
    //@Binding var name: String
    //@Binding var experience: CGFloat
    //@Binding var notation: Bool
    //@Binding var notationContent: String
    //@State private var showAlert = false
    //@State private var showSort = false
    //@State private var showPic = false
    //@State private var sort = 1
    var body: some View {
        VStack(){
            
        if (Int(selectRole) == 0)&&(String(selectGender) == "男"){
            Image(gender_pic[0])
        }
        else if (Int(selectRole) == 0)&&(String(selectGender) != "男"){
            Image(gender_pic[1])
        }

        if (Int(selectRole) == 1)&&(String(selectGender) == "男"){
            Image(gender_pic[2])
        }
        else if (Int(selectRole) == 1)&&(String(selectGender) != "男"){
            Image(gender_pic[3])
        }

        if (Int(selectRole) == 2)&&(String(selectGender) == "男"){
            Image(gender_pic[4])
        }
        else if (Int(selectRole) == 2)&&(String(selectGender) != "男"){
            Image(gender_pic[5])
        }
        if (Int(selectRole) == 3)&&(String(selectGender) == "男"){
            Image(gender_pic[6])
        }
        else if (Int(selectRole) == 3)&&(String(selectGender) != "男"){
            Image(gender_pic[7])
        }
        if (Int(selectRole) == 4)&&(String(selectGender) == "男"){
            Image(gender_pic[8])
        }
        else if (Int(selectRole) == 4)&&(String(selectGender) != "男"){
            Image(gender_pic[9])
        }
        if (Int(selectRole) == 5)&&(String(selectGender) == "男"){
            Image(gender_pic[10])
        }
        else if (Int(selectRole) == 5)&&(String(selectGender) != "男"){
            Image(gender_pic[11])
        }
            
            Button(action: {
            showAlert = true
            }){
                Text("開始遊戲")
                    .fontWeight(.heavy)
                    .padding()
                    .foregroundColor(.purple)
                    .frame(width: 180, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 5))
            }.alert(isPresented: $showAlert) { () -> Alert in
                return Alert(title: Text("尚未安裝遊戲"))
            }
//            Alert(title: Text("answer"), dismissButton: .default(Text("= ="), action: {
//               print("謝謝你我")
//            }))
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
        .background(bgColor
                .edgesIgnoringSafeArea(.all))
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage(showSecondPage:.constant(true),selectRole:.constant(0), selectGender: .constant("女"),bgColor:.constant(.gray))
    }
}
