//
//  Main view.swift
//  diabetUs
//
//  Created by Yasmine Rafid on 11/27/21.
//

import SwiftUI

struct Main_view: View {
    var body: some View {
                
                //background color
                VStack{
                    
                    Spacer()
                    
                    //white rectangle area
                    VStack{
                        
                        VStack(spacing: 25){
                            
                            //doctor,patient buttons
                            HStack{
                                
                                Button(action: {}){
                                    VStack{
                                        
                                        Spacer()
                                        
                                        Image("doctor")
//                                            .font(.system(size: 80))
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 100)
                                            .foregroundColor(Color("dark green"))
                                            .padding(.horizontal,43)//25
                                            .padding(.bottom,5)

                                        let doctor = "طبيب"
                                
                                        Text(doctor)
                                            .font(.system(size: 30))
                                            .foregroundColor(Color("dark green"))

                                        Spacer()
                                            
                                    }
                                    .frame(width: 170, height: 210, alignment: .leading)
                                    .background(Color("light grey"))
                                    .cornerRadius(14)
                                    

                                }
                                
                                
                                Button(action: {}){
                                    VStack{
                                        
                                        Image("patient")
                                            .font(.system(size: 80))
                                            .foregroundColor(Color("dark green"))
                                            .padding(.horizontal,55)
                                            .padding(.bottom,15)
                                            .padding(.top,6)
                                     
                                        let patient = "مريض"
                                        Text(patient)
                                            .font(.system(size: 30))
                                            .foregroundColor(Color("dark green"))
                                        
                                            
                                        
                                    }
                                    .frame(width: 170, height: 210, alignment: .leading)
                                    .background(Color("light grey"))
                                    .cornerRadius(14)
                                    

                                }
                                
                                
                            }

                            let or = "أو"
                            Text(or)
                                .foregroundColor(Color("dark green"))
                            
                            Button(action:{}){
                                
                                HStack{
                                    Spacer()
                                    
                                    let test = "فحص"
                                    Text(test)
                                        .foregroundColor(.white)
                                        .font(.system(size: 22))
                                    
                                    
                                    Image(systemName: "doc.text.magnifyingglass")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                    
                                    Spacer()
                                    
                                }
                                .frame(width: 342, height: 72, alignment: .leading)
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

struct Main_view_Previews: PreviewProvider {
    static var previews: some View {
        Main_view()
            .previewDevice("iPhone 11")
        
        Main_view()
            .previewDevice("iPhone 8")
    }
}

struct Corners : Shape {
    
    var corner : UIRectCorner
    var size : CGSize
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: size)
        
        return Path(path.cgPath)
        
        
    }
}
