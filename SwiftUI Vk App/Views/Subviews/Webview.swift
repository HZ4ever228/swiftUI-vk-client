//
//  Webview.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 31/05/2022.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let url: URL
    let completionSuccess: () -> Void
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> WebViewCoordinator {
        WebViewCoordinator(comletionSuccess: {
            self.completionSuccess()
        })
    }
}

class WebViewCoordinator: NSObject, WKNavigationDelegate {
    
    var comletionSuccess: () -> Void
    
    init(comletionSuccess: @escaping () -> Void = {}) {
        self.comletionSuccess = comletionSuccess
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("start")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish")
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        guard navigationResponse.response.url?.path == "/blank.html",
              let fragment = navigationResponse.response.url?.fragment else {
            decisionHandler(.allow)
            return
        }

        let params = fragment
            .components(separatedBy: "&")
            .map { $0.components(separatedBy: "=") }
            .reduce([String: String]()) { result, param in
                var dict = result
                let key = param[0]
                let value = param[1]
                dict[key] = value
                return dict
        }

        Session.instance.token = params["access_token"] ?? ""
        Session.instance.userId = params["user_id"] ?? ""
        decisionHandler(.cancel)
        comletionSuccess()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("error: ", error)
    }
}
