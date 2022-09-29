//
//  ContentView.swift
//  testpro
//
//  Created by Shahad on 17/09/2022.
//

import SwiftUI
import AVFoundation
struct photo: Identifiable{
    let id = UUID()
    
    let pic: String
   
   
}
struct phone: Identifiable{
    let id = UUID()
    
    let phone: String
   
   
}

struct inDetail: Identifiable{
    let id = UUID()
    
    let type: String
   
   
}

struct instagram: Identifiable{
    let id = UUID()
    
    let insta: String
   
   
}

struct ReInfo: Identifiable{
    let id = UUID()
    
    let title: String
    let imageName: String
    let insta: [instagram]
    let types: [inDetail]
    let number: [phone]
    var photos: [photo]
    
   
}


struct ContentView: View {
                        //done
    let restaurants = [ReInfo(title: "Burger Boutique", imageName: "bff",  insta: [instagram ( insta: "burgerboutique")], types: [inDetail(type: "Fast Food, American")], number: [phone(phone: "22997775" )],
                              photos: [photo(pic: "bf"),photo( pic: "bf2"),photo(pic: "bf3"), photo(pic: "bf4"), photo(pic: "bf5"), photo(pic: "bf6") ])
                       //done
   
                       ,ReInfo(title: "Yelo pizza", imageName: "Yellow pizza", insta: [instagram ( insta: "yelopizza")], types: [inDetail(type: "Italian Food")], number:[ phone(phone: "22558800")], photos: [photo(pic: "yelo3"), photo(pic: "yelo4"), photo(pic: "yelo2"), photo(pic: "yelo5")] )
                       // done
                       , ReInfo(title: "MJ burger", imageName: "mjburger",insta: [instagram ( insta: "mj.burgerkw")], types: [inDetail(type: "Fast Food") ], number: [phone(phone: "no number added")], photos: [photo(pic: "mj1"),photo(pic: "mj2"),photo(pic: "mj3"),photo(pic: "mj4")])
                       
                       //Done
                       ,ReInfo(title: "Elevation Burger", imageName: "ElevationBurger", insta: [instagram ( insta: "elevationkw")], types: [inDetail(type: "fast Food")], number: [phone(phone: "22270210")], photos: [photo(pic: "ele1"),photo(pic: "ele2"),photo(pic: "ele3"),photo(pic: "ele4"),photo(pic: "ele5"),])]
    
  
  
                        //done
    let Cafes = [ReInfo(title: "Arabica", imageName: "Arabica", insta: [instagram ( insta: "arabica.kuwait")], types: [inDetail(type: "Cafe")], number: [phone(phone: "22257171")], photos: [photo(pic: "ara1"),photo(pic: "ara2"),photo(pic: "ara3"),photo(pic: "ara4"),photo(pic: "ara5")])
                          //done
                 ,ReInfo(title: "Gravity", imageName: "grav", insta: [instagram ( insta: "gravitykw")], types: [inDetail(type: "Cafe")], number: [phone(phone: "50822043")], photos: [photo(pic: "grav1"),photo(pic: "grav2"),photo(pic: "grav3"),photo(pic: "grav4"),photo(pic: "grav5"),photo(pic: "grav6")])
                                 //done
                 ,ReInfo(title: "Tobys Estate", imageName: "TobysEstate",insta: [instagram (  insta: "tobysestate.kw")], types: [inDetail(type: "Cafe")], number: [phone(phone: "22094445")], photos: [photo(pic: "Tobys1"),photo(pic: "tobys2"),photo(pic: "topyss"),photo(pic: "tobys3"),photo(pic: "tobys4")] )
                                  //done
                 , ReInfo(title: "Press", imageName: "Press", insta: [instagram( insta: "presskw")], types: [inDetail(type: "Cafe")], number: [phone(phone: "68883940")], photos: [photo(pic: "press1"),photo(pic: "press2"),photo(pic: "press3"),photo(pic: "press4"),photo(pic: "press5"),photo(pic: "press6")] )]
    
    
    
                        //done
    let Healthys = [ReInfo(title: "PICK", imageName: "PICK", insta: [instagram( insta: "pick_kuwait")], types: [inDetail(type: "Cafe & Healthy Food")], number: [phone(phone: "1889977")], photos: [photo(pic: "PICK1"),photo(pic: "PICK2"),photo(pic: "PICK3"),photo(pic: "PICK4"),photo(pic: "PICK5")])
                    // done
                    ,ReInfo(title: "East", imageName: "East", insta: [instagram( insta: "eastkw")], types: [inDetail(type: "Cafe & Healthy Food")], number: [phone(phone: "66221619")], photos: [photo(pic: "East1"),photo(pic: "East2"),photo(pic: "East3"),photo(pic: "East4"),photo(pic: "East6")])
                    //done
                    ,ReInfo(title: "Health Stop", imageName: "Health stop",insta: [instagram  (insta: "healthstop")], types: [inDetail(type: "Healthy Food")], number: [phone(phone: "1839090")], photos: [photo(pic: "Health1"),photo(pic: "Health2"),photo(pic: "Health3"),photo(pic: "Health4"),photo(pic: "Health5")])
                    //done
                    ,ReInfo(title: "Diet Care", imageName: "Diet care", insta: [instagram( insta: "thedietcare")], types: [inDetail(type: "Healthy Food")], number: [phone(phone: "1806050")], photos: [photo(pic: "Diet1"),photo(pic: "Diet2"),photo(pic: "Diet3"),photo(pic: "Diet4"),photo(pic: "Diet5")])]
  
    
    @State var usersView = 0
    @State var searching = false
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
       
        NavigationView {
           
        ZStack{
            
            Image("wallpaper2").resizable().scaledToFill().opacity(0.7)
            //Color.pink.opacity(0.4)
           
            ScrollView{
               
                VStack {
                    Spacer()
                        .frame(height: 65 )
                    
                
                
          
     
                    
                            // Cafe
                     
                            VStack{
                                Text("Cafes")
                                    .font(.system(size: 20))
                                    .bold()
                                    .padding()
                                
                                
                                ScrollView(.horizontal){
                                    
                                    HStack{
                                        
                                        ForEach(Cafes) { Cafe in
                                            VStack{
                                                
                                                NavigationLink(destination:info(evaluation: Cafe) ){
                                                    Details1V(res: Cafe)
                                                       
                                                    
                                                    
                                                }
                                            
                                            }
                                        }
                                    }
                                    
                                }
                            }
                        
                            // end of cafes
                            // Restaurants
                        
                            VStack{
                                Text("Restaurants")
                                    .font(.system(size: 30))
                                    .bold()
                                    .padding()
                                
                                
                                ScrollView(.horizontal){
                                    
                                    HStack{
                                        
                                        ForEach(restaurants) { restaurant in
                                            VStack{
                                                
                                                NavigationLink(destination:info(evaluation: restaurant) ){
                                                    Details1V(res: restaurant)
                                                    
                                                    
                                                }
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }  //end of  Restaurants
                        VStack{
                            Text("Healthy food")
                                .font(.system(size: 30))
                                .bold()
                                .padding()
                            
                            
                            ScrollView(.horizontal){
                                
                                HStack{
                                    
                                    ForEach(Healthys) {Healthy in
                                        VStack{
                                            
                                            NavigationLink(destination:info(evaluation: Healthy) ){
                                                Details1V(res: Healthy)
                                                
                                                

                                            }
                                            
                                        }
                                    }
                                }
                                
                            }
                        }
                        
                        
                        }
                    }
                }
                
        .ignoresSafeArea()
        }
        
        
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
        struct Details1V: View {
            let res: ReInfo
            
            var body: some View {
                VStack{
                    
                    Image(res.imageName).resizable()
                        .frame(width: 90, height: 95)
                        .cornerRadius(10)
                        .padding()
                    
                    
                    Text(res.title)
                }
                .padding()
                .foregroundColor(.black)
                
            }
        }
    }


    
    
    struct info: View {
        let evaluation: ReInfo // the second view
        @State private var messageText = ""
        @State var messages: [String] = []
        
        var body: some View{
            NavigationView {
                ZStack(alignment: .leading){
                    
                    Image("wallpaper2").resizable().opacity(0.7)
                        .ignoresSafeArea()
                    VStack{
                        Spacer()
                            .frame(height: 90 )
                        HStack{
                            Spacer()
                                .frame(width: 10)
                            Text(evaluation.title).font(.largeTitle).bold().frame(alignment: .leading)
                            Spacer()
                        }
                        ForEach(evaluation.types){ ty in
                            
                            HStack{
                                Spacer()
                                    .frame(width: 10)
                                Text("Type:")
                                
                                Text(ty.type)
                                    
                                Spacer()
                                
                            }
                        } .padding(2)
                        ForEach(evaluation.number){ num in
                            
                            HStack{
                                Spacer()
                                    .frame(width: 10)
                                Image(systemName: "phone")
                                
                                Text(num.phone)
                                   
                                Spacer()
                                
                            }
                        }
                       
                        .padding(2)
                        ForEach(evaluation.insta){ ints in
                            
                            HStack{
                                Spacer()
                                    .frame(width: 10)
                                Image(systemName: "circle.square")
                                
                                Text(ints.insta)
                                   
                                Spacer()
                                
                            }
                        }
                        .padding(2)
                        
                            NavigationLink(destination: inphoto(ph: evaluation) ){
                                Spacer()
                                    .frame(width: 10)
                                HStack{
                                    
                                    
                                    Image(systemName: "photo.stack.fill")
                                    Text("photos")
                                       
                                    
                                }  .underline()
                                   
                                Spacer()
                                
                                
                                
                            }  .foregroundColor(.black)
                            
                        
                        

                        
                        
                        
                        ScrollView {
                            ForEach(messages, id: \.self) { message in
                                
                                if message.contains("[USER]") {
                                    let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                                    
                                    // User message styles
                                    HStack {
                                        Spacer()
                                            .frame(width: 10)
                                        Text(newMessage)
                                            .padding()
                                        
                                            .foregroundColor(Color.black)
                                            .frame(alignment: .leading)
                                            .background(Color.white.opacity(0.2))
                                            .cornerRadius(10)
                                            .padding(5)
                                        Spacer()
                                        Spacer()
                                    }
                                }
                            }
                        }
                        
                        
                        //  Message bar
                        HStack {
                            TextField("Tell us your opinion ..", text: $messageText)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                                .onSubmit {
                                    sendMessage(message: messageText)
                                }
                            
                            Button {
                                sendMessage(message: messageText)
                            } label: {
                                Image(systemName: "paperplane.fill")
                            }
                            .font(.system(size: 26))
                            .padding(.horizontal, 10)
                        }
                        .padding()
              
                        
                    }
                } .ignoresSafeArea()
                
                
                
                
            }
                
                
                Spacer()
                
            
               
                
            }
        func sendMessage(message: String) {
            withAnimation {
                messages.append("[USER]" + message)
                self.messageText = ""
                
                
            }
        }

    
          

    }




struct inphoto: View{
    let ph: ReInfo
    
    var body: some View{
        ScrollView {
            ZStack{
                
                Image("wallpaper2").resizable().opacity(0.7)
                    
                
             
                
                VStack{
                    Spacer()
                        .frame(height: 110)
                    ForEach(ph.photos){ photos in
                       
                        Image(photos.pic).resizable().frame(width: 250,height: 250)
                            .padding()
                        Spacer()
                        
                    }
                    
                }
                
            }
            
        } .ignoresSafeArea()
        .navigationBarHidden(true)
    } 
}

