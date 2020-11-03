//
//  ContentView.swift
//  ios_data_binding
//
//  Created by mac on 2020/11/1.
//

import SwiftUI

struct ContentView: View {
//    let role=[
//        Role(name:"狂狼勇士",img_Boy: "狂狼勇士男",img_Girl: "狂狼勇士女",img_BG:"狂狼勇士背景"),
//        Role(name:"龍魔導士",img_Boy: "龍魔導士男",img_Girl: "龍魔導士女",img_BG:"龍魔導士背景")
//    ]
    //@State private var revealDetails = false
   // @State private var selectOrganization = "維多利亞港"
    @State private var bgColor = Color.white
    @State private var roleHeight:Int = 0
    @State private var Num : Int = 0
    @State private var Num2 : Int = 0
    @State private var Num3 : Int = 0
    @State private var Num4 : Int = 0
    @State private var selectGender = "男"
       var gender = ["男", "女"]
    @State private var selectRole = 0
    @State private var snackTime = Date()
    @State private var name : String = ""
    @State private var notation = false
    @State private var experience:CGFloat = 0
    @State private var notationContent:String = ""
    @State private var showSecondPage = false
    var roles = ["狂狼勇士","龍魔導士","精靈遊俠","幻影俠盜","夜光","隱月"]
    var gender_pic = ["狂狼勇士男","狂狼勇士女","龍魔導士男","龍魔導士女","精靈遊俠男","精靈遊俠女","幻影俠盜男","幻影俠盜女","夜光男","夜光女","隱月男","隱月女"]
    //let places = ["維多利亞港","勇士之村","魔法森林","弓箭手村","墮落城市"]
    let equipment = ["刮鬍刀","乞丐套服","破舊的披風","皮製短靴"]
    var body: some View
    {
        NavigationView{
            VStack{
                Image(self.roles[self.selectRole])
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 4 * 3)
                    .clipped()
                    .onAppear()
                Form{
//                    ExtractedView2(selectRole: $selectRole,selectGender: $selectGender)
                    
                    
                    
                    VStack{
                        Text("職業")
                        Picker(selection: self.$selectRole, label: Text("職業")){
                            ForEach(0..<self.roles.count){(index) in
                                Text(self.roles[index])
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        // .cornerRadius(30)
                        .frame(width: 305, height: 50)
                        .clipped()
                        Picker(selection: self.$selectGender, label: Text("性別")){
                            ForEach(self.gender, id: \.self){(index) in
                                Text(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                       
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


                    }
                    
                    VStack{
                        TextField("暱稱", text: $name)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:20).stroke(Color.blue,lineWidth:2))
                        DatePicker("預備創建日期",selection:$snackTime,in : Date()...,displayedComponents:.date)
                                //.datePickerStyle(WheelDatePickerStyle())
                        Stepper(value: self.$roleHeight, in: 0...50){
                                                Text("遊戲經驗: \(self.roleHeight)年")
                                            }
                        
                    }

                    
                    HStack{
                        Text("起始資金: \(Int(self.experience))楓幣")
                                .padding(.trailing)
                        Slider(value: self.$experience, in: 0...1000000, step: 1000)
                                        }
                    DisclosureGroup("起始裝備") {
                                VStack(alignment: .leading) {
                                    ForEach(equipment.indices) { (index) in
                                        Text(equipment[index])
                                    }
                                }
                            }
                    Toggle("備註", isOn: self.$notation)
                                        if self.notation{
                                            TextField("其他", text: self.$notationContent)
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue, lineWidth: 2))
                                            
                                       }
                    HStack{
                        Button(action:{
                            let randNum = 1...9
                            self.Num = randNum.randomElement()!
                            self.Num2 = randNum.randomElement()!
                            self.Num3 = randNum.randomElement()!
                            self.Num4 = randNum.randomElement()!
                            
                        }){
                            ExtractedView()
                        }
                        //Spacer()
                        VStack {
                            HStack {
                                Text("力量：\(Num)")
                                Text("智力：\(Num2)")
                            }
                            HStack {
                                Text("敏捷：\(Num3)")
                                Text("幸運：\(Num4)")
                            }
                        }
                        
                        //DisclosureGroup
                    }
                    .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                    
                    VStack {
                                ColorPicker("favorite color", selection: $bgColor)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(bgColor)
                    Spacer()
                    ButtonView(showSecondPage: $showSecondPage, selectRole: $selectRole, selectGender: $selectGender, bgColor: $bgColor)
                }
                .frame(width: UIScreen.main.bounds.width, height: 460)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ExtractedView: View {
    var body: some View {
        Image("dice")
    }
}
struct ButtonView: View {
    //@Binding var name : String
    @Binding var showSecondPage: Bool
    @Binding var selectRole: Int
    @Binding var selectGender: String
//    @Binding var roleHeight: Int
//    @Binding var experience: CGFloat
//    @Binding var notation: Bool
//    @Binding var notationContent: String
    @Binding var bgColor: Color
   
    var body: some View {
        Button(action: {self.showSecondPage = true}){
            Text("確定")
                .fontWeight(.heavy)
                .padding()
                .foregroundColor(.purple)
                .frame(width: 80, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 5))
        }
        .offset(x:120)
        .sheet(isPresented: self.$showSecondPage){
            SecondPage(showSecondPage:$showSecondPage, selectRole: $selectRole, selectGender: $selectGender, bgColor: $bgColor)
        }
    }
}



