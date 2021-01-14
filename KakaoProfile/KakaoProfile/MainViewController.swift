//
//  MainViewController.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/14.
//
import Foundation
import UIKit
import WebKit

class MainViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = "뉴스"
//        print()
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let myURL = URL(string:"https://m.daum.net")
          let myRequest = URLRequest(url: myURL!)
          webView.load(myRequest)
    }
}

