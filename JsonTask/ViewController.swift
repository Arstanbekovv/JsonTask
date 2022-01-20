//
//  ViewController.swift
//  JsonTask
//
//  Created by Aziz on 19/1/22.
//
 
import UIKit

// //------------------3–JSON----------------------
//class Cafe: Codable{
//    var cafe: [cafeModel] = []
//}
//class cafeModel: Codable{
//    var title: String? = nil
//    var id: Int? = nil
//    var image: String? = nil
//    var bord: [bordArray] = []
//}
//class bordArray: Codable{
//    var id: Int? = nil
//    var title : String? = nil
//}




// //------------------2–JSON----------------------
//class Cafe: Codable{
//    var cafe: [modelCafe] = []
//    var comment: commentId
//}
//class modelCafe: Codable{
//    var title: String? = nil
//    var id : Int? = nil
//    var image: String? = nil
//    var bord: [Int] = []
//}
//
//class commentId: Codable{
//    var id: String? = nil
//}




// //----------------1–JSON------------------------
//class News: Codable{
//    var news : [NewsArray] = []
//    var page: Int? = nil
//}
//
//class NewsArray: Codable{
//    var title: String? = nil
//    var id: Int? = nil
//    var image: String? = nil
//}


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        
        //JSON Сtandartizirovannyi text predstavla5wii soboi klassy
        //JSON[ Java Script Object Notation ]
        super.viewDidLoad()
        
        
        // //----------------3–JSON------------------------
//                var json = """
//                {
//                  "cafe" : [
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [
//                        {
//                          "id": 1,
//                          "title": "test"
//                        },
//                        {
//                          "id": 2,
//                          "title": "test"
//                        }
//                      ]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [
//                        {
//                          "id": 1,
//                          "title": "test"
//                        },
//                        {
//                          "id": 2,
//                          "title": "test"
//                        }
//                        ]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [
//                        {
//                          "id": 1,
//                          "title": "test"
//                        },
//                        {
//                          "id": 2,
//                          "title": "test"
//                        }
//                      ]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [
//                        {
//                          "id": 1,
//                          "title": "test"
//                        },
//                        {
//                          "id": 2,
//                          "title": "test"
//                        }
//                        ]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [
//                        {
//                          "id": 1,
//                          "title": "test"
//                        },
//                        {
//                          "id": 2,
//                          "title": "test"
//                        }
//                      ]
//                    }
//                  ]
//                }
//        """
        
        
        
        
        // //----------------2–JSON------------------------
//        let json = """
//                {
//                  "cafe" : [
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [1, 2, 3, 4]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [1, 2, 3, 4]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [1, 2, 3, 4]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [1, 2, 3, 4]
//                    },
//                    {
//                      "title": "test1",
//                      "id": 1,
//                      "image": "URL",
//                      "bord": [1, 2, 3, 4]
//                    }
//                  ],
//                  "coment": {
//                    "id": "test"
//                  }
//                }
//        """
        
        
        
        // //--------------1–JSON--------------------------
        //        var json = """
        //
        //        {
        //          "news" : [
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            }
        //          ],
        //          "page": 10
        //        }
        //"""
        
        var model = try! JSONDecoder().decode(Cafe.self, from: Data(json.utf8))
        
        dump(model)
    }
    
    
}
