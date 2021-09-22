//
//  GeorgianViewController.swift
//  Aniket_Patel_Final_Project
//
//  Created by Aniket Patel on 2021-04-22.
//

import UIKit

class GeorgianViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GeorgianLink" {
            segue.destination as! GeorgianViewController
        }
    }
    
    
    
    @IBAction func bannerLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.georgiancollege.ca/admissions/banner-login-information/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func studentPortalLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://login.microsoftonline.com/da9a94b6-4681-49bc-bd7c-bab9eac0ad3c/oauth2/authorize?client_id=00000003-0000-0ff1-ce00-000000000000&response_mode=form_post&protectedtoken=true&response_type=code%20id_token&resource=00000003-0000-0ff1-ce00-000000000000&scope=openid&nonce=24145470BB48028D13815460481C7231DBD321BF84EF1B0A-26308097F74C8490000432B700B2BF5103B3BDA93BE07B8F70339EC875CACA5C&redirect_uri=https%3A%2F%2Fgeorgiancollege.sharepoint.com%2F_forms%2Fdefault.aspx&claims=%7B%22id_token%22%3A%7B%22xms_cc%22%3A%7B%22values%22%3A%5B%22CP1%22%5D%7D%7D%7D&wsucxt=1&cobrandid=11bd8083-87e0-41b5-bb78-0bc43c8a8e8a&client-request-id=73e6c09f-404b-0000-b58a-8693602f62a5")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func outlookLink(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://sts.georgiancollege.ca/adfs/ls/?client-request-id=225eee54-25a1-43be-971e-ce55891d492f&username=&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RPWgTYQCG8-WSM2kVQ3FwUUvRRbjcd_8_oHD5aSxNMGlSk6tguPvuJ9dc7ou5a9oLuOuWTehWQYSMgiAVxLmDZO4uiIOKIDia4OKm7_Dwwrs9722CyTPqTfgnLLUkBR2HoZC9bH9ltLaSa319tHFy633x-fWPu8-ubdHHYM218cj1jABh37ddO4-MGbjRi6JhqNI0Poh8jPt57DgeWmx4QONDg34LwByAWVISOUngJU5kZIXhBV6EfF42BGRyvELZnGhQPGeKlGKZiBIghxybk03BkM-Tl-9rB1GPXQKPvIn9I5l18GjQHeIwOibGJTSulnTNLWuFHVjcDrWwExbiXtB-YHm61zrSx1Fs36uZkhCbPTY4RKjh9_pN3a1byPJafa8StqE71F13s9rYdlHsl5ldraGUOlt-3BHlWNG77N6IiRguNqrK2JCMx11tRvyXyNcEuRAxwMEZQeKhHXjWPAW-pC7CtJrJrObA1cR64lcKvEgvhL96M_358NPLwruTu6nctyeJszTNBn4gl4bNhlVxa5q8Xwn4wWQH1ya1zaO2v9-M67BYKmOpLsI7kspMSTAlyVMymyFyiQ2iWGc-k-A7CZ5eSJxm_3XU-coVFrIMBXmK5dYhVAVRZZW9-Sr4cCnxGw2#")! as URL, options: [:], completionHandler: nil)
    }
    
}
