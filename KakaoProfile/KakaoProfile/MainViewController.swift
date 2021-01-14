//
//  MainViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/14.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    
    var webView: WKWebView!

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
}

extension MainViewController: WKUIDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://m.daum.net") {
            let myRequest = URLRequest(url: url)
            webView.load(myRequest)
        }
        
    }

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
}
