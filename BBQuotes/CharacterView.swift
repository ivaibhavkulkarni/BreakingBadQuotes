//
//  CharacterView.swift
//  BBQuotes
//
//  Created by Vaibhav kulkarni on 01/06/25.
//

import SwiftUI

struct CharacterView: View {
    let character: Char
    let show: String
    
    var body: some View {
            GeometryReader { geo in
                ZStack(alignment: .top ){
                    Image(show.lowercased().replacingOccurrences(of: " ", with: ""))
                        .resizable()
                        .scaledToFit()
                    ScrollView{
                        AsyncImage(url: character.images[0]){ image in
                            image
                                .resizable()
                                .scaledToFill()
                        }placeholder: {
                            ProgressView()
                        }
                        .frame(width: geo.size.width/1.1, height: geo.size.height/1.7)
                        .clipShape(.rect(cornerRadius: 25))
                        .padding(.top,60)
                        
                        VStack(alignment: .leading){
                            Text(character.name)
                                .font(.largeTitle)
                            
                            Text("Portrayed By: \(character.portrayedBy)")
                                .font(.subheadline)
                            
                            Divider()
                            
                            Text("\(character.name) Character Info")
                                .font(.title2)
                            
                            Text("Born: \(character.birthday)")
                            Divider()
                            
                            Text("Occupation:")
                            
                            ForEach(character.occupations, id: \.self){
                                occupation in
                                
                                Text("•\(occupation)")
                                    .font(.subheadline)
                            }
                            
                            Divider()
                            
                            Text("Nicknames:")
                            
                            if character.aliases.count > 0{
                                ForEach(character.aliases, id: \.self) {
                                    alias in
                                    
                                    Text("•\(alias)")
                                        .font(.subheadline)
                                }
                            }else{
                                Text("None")
                                    .font(.subheadline)
                            }
                            
                            Divider()
                            
                            Text("Status:")
                            
                        }
                        .frame(width: geo.size.width/1.25, alignment: .leading)
                    }
                    .scrollIndicators(.hidden)
                }
        }
            .ignoresSafeArea()
    }
}

#Preview {
    CharacterView(character: ViewModel().character, show: "Breaking Bad")
}
