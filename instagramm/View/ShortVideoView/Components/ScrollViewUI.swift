//
//  ScrollViewUI.swift
//  instagramm
//
//  Created by Anh Tú on 29/12/2564 BE.
//

import SwiftUI
import UIKit

struct ScrollViewUI<Content: View>: UIViewControllerRepresentable {

  var content: () -> Content
  var hideScrollIndicators: Bool = false

  init(hideScrollIndicators: Bool, @ViewBuilder content: @escaping () -> Content) {
      self.content = content
      self.hideScrollIndicators = hideScrollIndicators
  }

  func makeUIViewController(context: Context) -> ScrollViewController<Content> {
      let vc = ScrollViewController(rootView: self.content())
      vc.hideScrollIndicators = hideScrollIndicators
      return vc
  }

  func updateUIViewController(_ viewController: ScrollViewController<Content>, context: Context) {
      viewController.hostingController.rootView = self.content()
  }
}

class ScrollViewController<Content: View>: UIViewController, UIScrollViewDelegate {

  var hideScrollIndicators: Bool = false

  lazy var scrollView: UIScrollView = {
      let view = UIScrollView()
      view.delegate = self
      view.showsVerticalScrollIndicator = !hideScrollIndicators
      view.showsHorizontalScrollIndicator = !hideScrollIndicators
      view.bounces = false
      view.backgroundColor = .clear
      view.isPagingEnabled = true
      return view
  }()

  init(rootView: Content) {
      self.hostingController = UIHostingController<Content>(rootView: rootView)
      self.hostingController.view.backgroundColor = .clear
      super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  var hostingController: UIHostingController<Content>! = nil

  override func viewDidLoad() {
      super.viewDidLoad()

      view.addSubview(scrollView)
      view.backgroundColor = .clear

      self.makefullScreen(of: self.scrollView, to: self.view)
      self.hostingController.willMove(toParent: self)
      self.scrollView.addSubview(self.hostingController.view)
      self.makefullScreen(of: self.hostingController.view, to: self.scrollView)
      self.hostingController.didMove(toParent: self)
  }

  func makefullScreen(of viewA: UIView, to viewB: UIView) {
      viewA.translatesAutoresizingMaskIntoConstraints = false
      viewB.addConstraints([
          viewA.leadingAnchor.constraint(equalTo: viewB.leadingAnchor),
          viewA.trailingAnchor.constraint(equalTo: viewB.trailingAnchor),
          viewA.topAnchor.constraint(equalTo: viewB.topAnchor),
          viewA.bottomAnchor.constraint(equalTo: viewB.bottomAnchor),
      ])
  }
}
