//
//  MYProductPage.swift
//  FakeProduct
//
//  Created by suraj kumar on 23/03/23.
//

import SwiftUI

struct MYProductPage: View {
    @State var name: String = ""
    @State var price: String = ""
    @State var description: String = ""
    @State var category: String = ""
    var body: some View {
        VStack {
            Button {
                print("hii")
            } label: {
                
                Image(systemName: "person.fill")
                    .resizable()
            }
            .frame(width: 100, height: 100)
            
            TextField("suraj", text: $name)
                .padding(.leading, 10)
                .frame(height: 66)
                .background(Color.gray.opacity(0.1))
            TextField("kumar", text: $price)
                .padding(.leading, 10)
                .frame(height: 66)
                .background(Color.gray.opacity(0.1))
                
            TextField("description", text: $description)
                .padding(.leading, 10)
                .frame(height: 66)
                .background(Color.gray.opacity(0.1))
                
            TextField("category", text: $category)
                .padding(.leading, 10)
                .frame(height: 66)
                .background(Color.gray.opacity(0.1))
        }
        .padding(.all, 10)
        Button {
            print("hii")
        } label: {
            Text("Update Your product")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                
        }
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .background(Color.blue)
        .cornerRadius(10)
        .padding(.all, 10)

        
    }
}

struct MYProductPage_Previews: PreviewProvider {
    static let name: String = "some"
    static var previews: some View {
        MYProductPage(name: name)
    }
}
