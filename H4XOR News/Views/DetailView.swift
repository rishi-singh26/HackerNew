//
//  DetailView.swift
//  H4XOR News
//
//  Created by Rishi Singh on 01/08/23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.example.com")
    }
}

