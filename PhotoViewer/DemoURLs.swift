//
//  DemoURLs.swift
//  PhotoViewer
//
//  Created by Ilya Semerukhin on 11.08.2018.
//

import Foundation

struct DemoURLs {
   
   static let facadeOfABank = Bundle.main.url(forResource: "pawel-czerwinski-770637-unsplash", withExtension: "jpg")
//   static let facadeOfABank = URL(string: "https://images.unsplash.com/photo-1533682671526-d1eb9f0c65f3")
   
   static var pawelCzerwinski: Dictionary<String, URL> = {
      let pawelCzerwinskiStrings = [
         "Facade of a bank": "https://images.unsplash.com/photo-1533682671526-d1eb9f0c65f3",
         "Ventilation duct": "https://images.unsplash.com/photo-1533390178274-fe0b47d5e557",
         "Rocks in the wall": "https://images.unsplash.com/photo-1533828559352-1dea3252b8a7"
      ]
      var urls = Dictionary<String, URL>()
      for (key, value) in pawelCzerwinskiStrings {
         urls[key] = URL(string: value)
      }
      return urls
   }()
   
}





