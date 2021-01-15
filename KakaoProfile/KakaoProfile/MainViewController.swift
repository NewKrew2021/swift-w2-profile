//
//  MainViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/14.
//

import UIKit
import WebKit

class MainViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var webSubView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        myButton.layer.zPosition = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://m.daum.net") {
            let myRequest = URLRequest(url: url)
            webView.load(myRequest)
        }
        myLoadView()

    }
    @IBAction func myButtonTouched(_ sender: Any) {
        webView.goBack()
    }
    
    func myLoadView() {
        webView.uiDelegate = self
        view.addSubview(webView)
        webView.addSubview(webSubView)
        webSubView.addSubview(myButton)
    }

    
}

//extension MainViewController: {
//}
