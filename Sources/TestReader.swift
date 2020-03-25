//
//  EpubReader.swift
//  Demo
//
//  Created by Lin YuYu on 2020/3/10.
//

import UIKit
import WebKit
import SnapKit

open class TestReader: UIViewController {
    var webView: WKWebView!
    var activityIndicator: UIActivityIndicatorView!


    override open func loadView() {
        super.loadView()
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true

        webView = WKWebView(frame: .zero, configuration: configuration)
        webView.navigationDelegate = self
        self.view = webView

        activityIndicator = UIActivityIndicatorView(style: .gray)
        activityIndicator.startAnimating()
        self.view.addSubview(activityIndicator)

        activityIndicator.snp.makeConstraints { (make) -> Void in
           make.center.equalTo(self.view)
        }
    }

    override open func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        self.webView.load(request)
    }
}

// MARK: WKNavigationDelegate
extension TestReader: WKNavigationDelegate {

    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }

    public func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
    }
}
