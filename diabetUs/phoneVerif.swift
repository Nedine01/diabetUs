//
//  phoneVerif.swift
//  diabetUs
//
//  Created by Yasmine Rafid on 11/28/21.
//

import SwiftUI

struct phoneVerif: View {
    @State var num : String = ""
    var body: some View {
        //background color
        VStack{
                
             
                Button(action:{}){
                    
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 22))
                        .foregroundColor(.black)
        
                    
                }
                .padding(.top,60)
                .padding(.trailing,320)
                
            
            
            
            
            Spacer()
            
            
            //white rectangle area
            VStack{
                
                
                VStack(spacing: 60){
                    
                    //title
                    HStack{
                        customDivide()
                            .frame(width: 100, height: 0)
                        
                        Text("رمز التحقق")
                            .foregroundColor(Color("lighter green"))
                            .font(.system(size: 33))
                            .padding(.horizontal,8)
                            
                        customDivide()
                            .frame(width: 100, height: 0)
                        
                    }
                    
                    //text
                    Text("ادخل رقم الهاتف")
                        .foregroundColor(Color("dark grey"))
                        .font(.system(size: 20))
                    Text("سيتم ارسال رمز سري يستخدم لمرة واحدة فقط")
                        .foregroundColor(.gray)
                        .padding(.top,-38)
                    
                    //phone number input
                    HStack(alignment: .center, spacing: 10){
//                        Spacer()
                        
                        Text("+962")
                            .font(.system(size: 25))
                            .padding(.leading,55)
                            .foregroundColor(Color("dark grey"))
                        
                        CustomTextField(placeholder: "7xxxxxxxx", value: $num)
                            .padding(.leading,30)
                            .padding(.top,8)
                            .font(.system(size: 25))
                            .keyboardType(.numberPad)
                        
                        
//                        TextField("7xxxxxxxx", text: $num)
//                            .keyboardType(.numberPad)
//                            .font(.system(size: 25))
//                            .padding(.leading,30)
//                        Spacer()
                        
                    }
                    
                  

                    
                    
                    Button(action:{}){
                        
                        HStack{
                            
                            Spacer()
                            
                            Text("ارسل الرمز")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                            
                            Spacer()
                            
                        }
                        .frame(width: 342, height: 48, alignment: .leading)
                        .background(Color("light green"))
                        .cornerRadius(14)
                    }
                    
                }
                
            }
            .frame(maxWidth: .infinity,maxHeight: 550)
            .background(Color.white)
            .clipShape(Corners(corner: [.topRight,.topLeft], size: CGSize(width: 50, height: 50)))
            
        }
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("background").resizable())
//                .background(LinearGradient(gradient: .init(colors: [Color("light green"),Color("dark green")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct phoneVerif_Previews: PreviewProvider {
    static var previews: some View {
        phoneVerif()
            .previewDevice("iPhone 11")
        phoneVerif()
            .previewDevice("iPhone 8")
    }
}

struct customDivide: View {
    
    let color = Color("light grey")
    let width: CGFloat = 1.5
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

@ViewBuilder
func CustomTextField(placeholder: String,value: Binding<String>) -> some View {
    VStack{
        TextField(placeholder, text: value)
        Rectangle()
            .fill(Color("dark grey"))
            .frame(height: 1.5)
            .edgesIgnoringSafeArea(.horizontal)
            .padding(.trailing,50)
            .padding(.top,-10)
//        Divider()
//            .padding(.top,-10)
//            .padding(.trailing,50)
//            .foregroundColor(Color("dark grey"))
    }
}
