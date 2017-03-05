//
//  Car.swift
//  miGaraje
//
//  Created by Jordi Carbonell on 20/1/17.
//  Copyright © 2017 materiaWeb. All rights reserved.
//

import Foundation
import UIKit

class Car: NSObject{
    
    var cv: Int!
    var marca : String!
    var modelo : String!
    var kms: Double!
    var color: UIColor!
    var image: UIImage?
    
    //Computed Propierties. Para que no salgan las posiciones de memoria por consola
    override var description: String{
        return "Mi coches es un \(marca!), tiene \(cv!) caballos de potencia y llevo hechos \(kms!)kms"
    }
    
    //Constructor por defecto o vacio
    
    override init(){
        cv = 0
        marca = "Desconocida"
        modelo = "Desconocida"
        color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        kms = 0
    }
    
    //Constructor que creamos propio
    init(cv: Int, marca: String, kms: Double, color:UIColor, modelo:String, image: UIImage?){
        self.cv = cv
        self.marca = marca
        self.kms = kms
        self.color = color
        self.modelo = modelo
        
        //optional binding
        if let image = image{
            self.image = image

        }
        
    }
    
    
    
    
}
