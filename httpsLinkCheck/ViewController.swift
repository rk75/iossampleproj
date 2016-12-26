//
//  ViewController.swift
//  httpsLinkCheck
//
//  Created by Vel on 22/12/16.
//  Copyright © 2016 rajesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLSessionDelegate  {

    @IBAction func btnClick(sender: AnyObject) {
     let requestURL: NSURL = NSURL(string: "https://192.169.189.100:7443/times/userLoginJSON.jsp?centercode=1248&Username=adminglobaltots&Password=12345678")!
       /* let  requestURL: NSURL = NSURL(string: "http://208.109.108.174:7070/times/userLoginJSON.jsp?centercode=1221&Username=adminlittle&Password=sipindia")!
        */
        //push from folder
       
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
        //let session = NSURLSession.sharedSession()
        var configuration =
        NSURLSessionConfiguration.defaultSessionConfiguration()
        
        var session = NSURLSession(configuration: configuration, delegate: self, delegateQueue:NSOperationQueue.mainQueue())
        
        let task = session.dataTaskWithRequest(urlRequest) {
            
            (data, response, error) -> Void in
            
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            print(statusCode)
            
            
            
        }
        task.resume()
        
        
       // httpGet(NSMutableURLRequest(URL: NSURL(string: "https://192.169.189.100:7443/times/userLoginJSON.jsp?centercode=1248&Username=adminglobaltots&Password=12345678")!))
        
        
        /*
        var session = NSURLSession(configuration: configuration, delegate: self, delegateQueue:NSOperationQueue.mainQueue())
        
        var task = session.dataTaskWithRequest(request){
            (data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
            if error != nil {
                callback("", error.localizedDescription)
            } else {
                var result = NSString(data: data, encoding:
                    NSASCIIStringEncoding)!
            }
        }
        task.resume()
*/

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func httpGet() {
        var urlRequest:NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: "https://192.169.189.100:7443/times/userLoginJSON.jsp?centercode=1248&Username=adminglobaltots&Password=12345678")!);
        
        
    var configuration =
    NSURLSessionConfiguration.defaultSessionConfiguration()
    
    var session = NSURLSession(configuration: configuration, delegate: self, delegateQueue:NSOperationQueue.mainQueue())
    
        let task = session.dataTaskWithRequest(urlRequest) {
            
            (data, response, error) -> Void in
            
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            print(statusCode)
            
            
            
        }
    task.resume()
    }
    
    func URLSession(session: NSURLSession,
        task: NSURLSessionTask,
        didReceiveChallenge challenge: NSURLAuthenticationChallenge,
        completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?)
        -> Void) {
            // your code
              completionHandler(NSURLSessionAuthChallengeDisposition.UseCredential, NSURLCredential(forTrust: challenge.protectionSpace.serverTrust!))
    }
    
}

