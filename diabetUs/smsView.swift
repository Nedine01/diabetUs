//
//  smsView.swift
//  diabetUs
//
//  Created by Yasmine Rafid on 12/3/21.
//

import SwiftUI

struct smsView: View {
    @State var num : String = "790872936"
    @State var sms : String = ""
    @State var sms1 : String = ""
    @State var sms2 : String = ""
    @State var sms3 : String = ""
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
                    
                    //sms input
                    HStack(alignment: .center, spacing: 10){
                        
                        TextField("",text:$sms)
                            .frame(width: 68, height: 84)
                            .background(Color("light grey"))
                            .cornerRadius(16)
//                            .padding(.leading,10)
                        
                        TextField("",text:$sms1)
                            .frame(width: 68, height: 84)
                            .background(Color("light grey"))
                            .cornerRadius(16)
                        
                        TextField("",text:$sms2)
                            .frame(width: 68, height: 84)
                            .background(Color("light grey"))
                            .cornerRadius(16)
                        
                        TextField("",text:$sms3)
                            .frame(width: 68, height: 84)
                            .background(Color("light grey"))
                            .cornerRadius(16)
                        
                    }
                    .padding(.top,-30)
                   
                    
                  

                    
                    
                    Button(action:{}){
                        
                        HStack{
                            
                            Spacer()
                            
                            Text("التالي")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                            
                            Spacer()
                            
                        }
                        .frame(width: 342, height: 48, alignment: .leading)
                        .background(Color("light green"))
                        .cornerRadius(14)
                    }
//                    .padding(.top,30)
                    
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

struct smsView_Previews: PreviewProvider {
    static var previews: some View {
        smsView()
            .previewDevice("iPhone 11")
        
        smsView()
            .previewDevice("iPhone 8")
    }
}
