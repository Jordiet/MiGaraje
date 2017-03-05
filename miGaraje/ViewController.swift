//
//  ViewController.swift
//  miGaraje
//
//  Created by Jordi Carbonell on 20/1/17.
//  Copyright © 2017 materiaWeb. All rights reserved.
// TO DO 186 Métodos de las clases

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var imagen: UIImageView!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    var myCar : Car!
    //Ahora quiero contruir no solo un coche sino una flota de coches. De momento lo creo vacio
    var myGarage: [Car] = []
    var carID : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //este chupa del constructor vacio
        //let myCar : Car = Car()
        //print(myCar.marca)
        
        //y este desde mi propio constructor
        myCar = Car(cv: 140, marca: "Citroen", kms: 43000, color: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), modelo: "CC", image: #imageLiteral(resourceName: "cactus.jpg") )
        myGarage.append(myCar)
        
        //voy a crear más coches
        myCar = Car(cv: 80, marca: "Ford", kms: 1800000, color: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1), modelo: "Fiesta", image: #imageLiteral(resourceName: "fiesta.jpg"))
        myGarage.append(myCar)
        
        myCar = Car(cv: 320, marca: "Ferrari", kms: 3300, color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1), modelo: "Italia", image: #imageLiteral(resourceName: "ferrari.jpg"))
        myGarage.append(myCar)
        
        //carID = 0
        updateView()
        
    }
    
    @IBAction func cambiarCoche(_ sender: AnyObject) {
        
        carID += 1
        if (carID >= myGarage.count){
            carID = 0
        }
        updateView()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView(){
        
        myCar = myGarage[carID]
        //MARK : ANIMACIONES 185
        UIView.animate(withDuration: 1.5, delay: 0.25, options: .curveLinear, animations: { 
            
            if(self.myCar.image != nil){
                self.imagen.image = self.myCar.image
            }
            self.imagen.image = self.myCar.image
            self.label1.text = "\(self.myCar.marca!) \(self.myCar.modelo!) "
            self.label2.text = "CV: \(self.myCar.cv!) "
            self.label3.text = "KMS: \(self.myCar.kms!) "
            
            self.view.backgroundColor = self.myCar.color
            
            
            
            }) { (completed) in
                print("Animación completada")
        }
        
        
        
    }


}

