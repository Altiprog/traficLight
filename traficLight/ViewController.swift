//
//  ViewController.swift
//  traficLight
//
//  Created by Александр Тиунович on 22.09.23.
//

import UIKit

enum TrafficLightColors {
    case off
    case red
    case yellow
    case green
}

    
class ViewController: UIViewController {
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
   
    @IBOutlet weak var button: UIButton!

    private var trafficLightColors = TrafficLightColors.off
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        redColor.layer.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        redColor.alpha = 0.3
        redColor.layer.cornerRadius = 75
        
        yellowColor.layer.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        yellowColor.alpha = 0.3
        yellowColor.layer.cornerRadius = 75
        
        greenColor.layer.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        greenColor.layer.cornerRadius = 75
        greenColor.alpha = 0.3
        
        button.setTitle("START", for: UIControl.State .normal)
        button.backgroundColor = UIColor.systemBlue
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 15
    }

    @IBAction func buttonAction() {
        
        button.setTitle("NEXT", for: UIControl.State .normal)
       
        switch trafficLightColors {
                case .off:
                    redColor .alpha = 1
           
            button.setTitleColor(UIColor.black, for: .normal)
                    trafficLightColors = .red
                case .red:
                    redColor.alpha = 0.3
                    yellowColor.alpha = 1
            
            button.setTitleColor(UIColor.black, for: .normal)
                    trafficLightColors = .yellow
                case .yellow:
                    yellowColor.alpha = 0.3
                    greenColor.alpha = 1
           
            button.setTitleColor(UIColor.black, for: .normal)
                    trafficLightColors = .green
                case .green:
                    greenColor.alpha = 0.3
                    redColor.alpha = 1
           
            button.setTitleColor(UIColor.black, for: .normal)
                    trafficLightColors = .red
    
        }
      
            }
            
        }
       

        
        
