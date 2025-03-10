//
//  U1.swift
//  App530
//
//  Created by IGOR on 04/05/2024.
//

import SwiftUI

struct U1: View {
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                Image("U1")
                    .resizable()
                    .ignoresSafeArea()
            }
            
            VStack {
                
                Image("card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .padding(.bottom, 130)
            }
            
            VStack {
                
                Spacer()
                
                VStack {
                    
                    Text("Play and win with us")
                        .foregroundColor(.black)
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    HStack {
                        
                        Circle()
                            .fill(Color("prim"))
                            .frame(width: 8, height: 8)
                        
                        Circle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 8, height: 8)

                        Spacer()
                        
                        NavigationLink(destination: {
                            
                            Reviewa()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .regular))
                                .frame(width: 140, height: 50)
                                .background(RoundedRectangle(cornerRadius: 20).fill(Color("prim")))
                        })
                    }
                    .padding()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 230)
                .background(RoundedRectangle(cornerRadius: 20).fill(.white))
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    U1()
}
