//
//  MainViewController.swift
//  KakaoProfile
//
//  Created by herb.salt on 2021/01/14.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    
    private let url = URL(string: "https://m.daum.net")
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initWebView()
    }
    
    func initWebView() {
        if let urlReal = self.url {
            self.webView.load(URLRequest(url: urlReal))
        }
    }

}
