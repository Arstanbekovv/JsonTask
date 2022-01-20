//
//  ViewController.swift
//  JsonTask
//
//  Created by Aziz on 19/1/22.
//

import UIKit


class dopJson: Codable{
    var dependentsCount: String? = nil
    var requestingAmount: Int? = nil
    var repaymentDays: Int? = nil
    var educationDegree: String? = nil
    var actualResidenceLocation: String? = nil
    var durationOfActualResidenceLocation: String? = nil
    var placeOfWork: placeModel
    var incomes: [incomesModel] = []
    var maritalStatus: String? = nil
    var spouse: spouseMod
    var realEstateItems: [realEstateItemsMod] = []
    var personalEstateItems: [personalEstateItemsMod] = []
    var isPublicOfferRead: Bool? = nil
    var isLimitUpgradeApplication: Bool? = nil

}

class placeModel: Codable{
    
    var placeOfWorkType: String? = nil
    var income: Int? = nil
    var address: String? = nil
    var workExperience: String? = nil
    var employeeCompany: String? = nil
    var employeePosition: String? = nil
    var documentImage: String? = nil
    var entrepreneurshipType: String? = nil
    var entrepreneurshipDescription: String? = nil
    var entrepreneurshipCertificateNumber: String? = nil
}
class incomesModel: Codable{
    var work: String? = nil
    var value: Int? = nil
}

class spouseMod: Codable{
    var name: String? = nil
    var surname: String? = nil
    var patronymic: String? = nil
    var incomes: [incomesModel] = []
}

class realEstateItemsMod: Codable{
    var type: String? = nil
    var address: String? = nil
}
class personalEstateItemsMod : Codable{
    var type: String? = nil
    var brand: String? = nil
    var model: String? = nil
    var manufactureYear: Int? = nil
}




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
        
        let json = """
        {
          "dependentsCount": "Nil",
          "requestingAmount": 0,
          "repaymentDays": 0,
          "educationDegree": "Higher",
          "actualResidenceLocation": "Bishkek",
          "durationOfActualResidenceLocation": "_0and2Months",
          "placeOfWork": {
            "placeOfWorkType": "Company",
            "income": 100000000,
            "address": "string",
            "workExperience": "OneOrLess",
            "employeeCompany": "string",
            "employeePosition": "Specialist",
            "documentImage": "string",
            "entrepreneurshipType": "Trade",
            "entrepreneurshipDescription": "string",
            "entrepreneurshipCertificateNumber": "string"
          },
          "incomes": [
            {
              "work": "string",
              "value": 100000000
            }
          ],
          "maritalStatus": "Single",
          "spouse": {
            "name": "string",
            "surname": "string",
            "patronymic": "string",
            "incomes": [
              {
                "work": "string",
                "value": 100000000
              }
            ]
          },
          "realEstateItems": [
            {
              "type": "Apartment",
              "address": "string"
            }
          ],
          "personalEstateItems": [
            {
              "type": "Car",
              "brand": "string",
              "model": "string",
              "manufactureYear": 2100
            }
          ],
          "isPublicOfferRead": true,
          "isLimitUpgradeApplication": true
        }
"""
        
        
        
        
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
        
        var model = try! JSONDecoder().decode(dopJson.self, from: Data(json.utf8))
        
        dump(model)
    }
    
    
}
