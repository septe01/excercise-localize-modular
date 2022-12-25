//
//  ProductView.swift
//  Product
//
//  Created by septe habudin on 24/12/22.
//

import SwiftUI
import Common

//struct ProductView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView()
//    }
//}

public struct ProductView<Destination: View>: View {
    let action: (()-> Destination)

    public init(action: @escaping (() -> Destination)){
        self.action = action
    }

    public var body: some View{
        VStack {

            Image("Dicoding", bundle: Bundle(identifier: "septehabudin.Common"))
                  .resizable()
                  .frame(width: 240, height: 240)

            Text("Hi, i'm using Quicksand as Font")
                  .font(.custom("Quicksand-Regular", size: 20))
                  .foregroundColor(.white)

            Text("Hi, i'm using framework's Sunny Spells as Font")
                 .font(.custom("SunnySpells-Regular", size: 20))

            NavigationLink {
                self.action()
            } label: {
                Text("Open To Cart")
            }
        }.navigationTitle("product_title".localized(identifier: "septehabudin.Product"))
    }
}
