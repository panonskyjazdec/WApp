//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Matus Lang on 13/11/2017.
//  Copyright © 2017 Matus Lang. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
    
}

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?

    @IBOutlet weak var changeCityTextField: UITextField!
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        delegate?.userEnteredANewCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func BackButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
