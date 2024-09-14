//
//  Users_3.swift
//  App876
//
//  Created by Вячеслав on 9/14/24.
//

import SwiftUI

struct Users_3: View {
    
    @AppStorage("status") var status: Bool = false

    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Don’t miss anything")
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                Spacer()
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("Finish")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
        }
    }
}

#Preview {
    Users_3()
}
