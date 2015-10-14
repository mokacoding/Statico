//
//  ViewController.swift
//  Statico
//
//  Created by Giovanni on 14/10/2015.
//  Copyright © 2015 mokacoding. All rights reserved.
//

import UIKit
import Static

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  let dataSource = DataSource()

  override func viewDidLoad() {
    super.viewDidLoad()

    dataSource.tableView = tableView
    dataSource.sections = [
      Section(
        header: Section.Extremity.Title("title"),
        rows: [
          Row(text: "foo"),
          Row(text: "bar"),
          Row(text: "tap me", selection: { self.showAlert() })
        ]
      )
    ]
  }

  private func showAlert() {
    let alertController = UIAlertController(title: nil, message: "😜", preferredStyle: .Alert)
    let alertAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
    alertController.addAction(alertAction)

    self.presentViewController(alertController, animated: true, completion: nil)
  }

}

