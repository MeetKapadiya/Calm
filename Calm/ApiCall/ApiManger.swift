//
//  ApiCallViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 27/03/23.
//

import UIKit
import Alamofire

class ApiManger: UIViewController {
    
    var arrData: API!
    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiNib()
        setUp()
    }
    
    private func ApiNib(){
        let ApiNib: UINib = UINib(nibName: "SecondTableViewCell", bundle: nil)
        TableView.register(ApiNib, forCellReuseIdentifier: "SecondTableViewCell")
    }
    
    private func setUp(){
        AF.request("https://api.zippopotam.us/us/90210", method: .get).responseData { [self] response in
            debugPrint("response \(response)")
            if response.response?.statusCode == 200{
                guard let apiData = response.data else { return }
                do {
                    let apiResponce = try JSONDecoder().decode(API.self, from: apiData)
                    print(apiResponce)
                    arrData = apiResponce
                    TableView.reloadData()
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("error che")
            }
        }
    }
}


extension ApiManger: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SecondTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        cell.firstLabel.text = "\(arrData.places[indexPath.row].longitude)"
        cell.secondLabel.text = "\(arrData.places[indexPath.row].state)"
        cell.thirdLabel.text = "\(arrData.places[indexPath.row].latitude)"
        cell.fourLabel.text = "\(arrData.countryAbbreviation)"
        cell.fiveLabel.text = "\(arrData.places[indexPath.row].placeName)"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData?.places.count ?? 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
    }
}






