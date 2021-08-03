//
//  SafariViewController.swift
//  SafariViewController
//
//  Created by Андрей Бородкин on 03.08.2021.
//

import UIKit
import WebKit

class SafariViewController: UIViewController {

    var countryName: String?
    var webView: WKWebView?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let countryName = countryName else {
            return
        }

        let url = URL(string: "https://ru.wikipedia.org/wiki/" + countryName)
        webView?.load(URLRequest(url: url!))
    }
    



}
