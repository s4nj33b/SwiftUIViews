//
//  WebView.swift
//  NewAge
//
//  Created by Sanjeeb Pallai on 12/04/23.
//

import SwiftUI
import WebKit

struct SwiftUIWebView: View {
    var body: some View {
        WebView(url: "https://bolt.earth/")
    }
}

struct SwiftUIWebView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWebView()
    }
}

struct WebView: UIViewRepresentable {
    let url: String

    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        webView.load(URLRequest(url: URL(string: url)!))
        return webView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
