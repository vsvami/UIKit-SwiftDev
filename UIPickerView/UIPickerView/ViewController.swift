//
//  ViewController.swift
//  UIPickerView
//
//  Created by Владимир Дмитриев on 28.07.23.
//

import UIKit

//class ViewController: UIViewController {
//
//    let picker = UIPickerView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        picker.center = view.center
//
//        picker.dataSource = self
//        picker.delegate = self
//
//        self.view.addSubview(picker)
//
//    }
//
//}
//
//extension ViewController: UIPickerViewDataSource {
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 10
//    }
//
//}
//
//extension ViewController: UIPickerViewDelegate {
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let result = "row = \(row)"
//        return result
//    }
//
//}

//class ViewController: UIViewController {
//
//    let picker = UIDatePicker()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        picker.center = view.center
//        picker.datePickerMode = .date
//
//        self.view.addSubview(picker)
//
//        var oneYearTime = TimeInterval()
//        oneYearTime = 365 * 24 * 60 * 60
//
//        let todayDate = Date()
//        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
//        let twoTearFromToday = todayDate.addingTimeInterval(2 * oneYearTime)
//
//        picker.minimumDate = oneYearFromToday
//        picker.maximumDate = twoTearFromToday
//
//        picker.addTarget(self, action: #selector(datePickerChange(paranDatePicker:)), for: .valueChanged)
//
//    }
//
//    @objc func datePickerChange (paranDatePicker: UIDatePicker) {
//        if paranDatePicker.isEqual(self.picker) {
//            print("dateChange = ", paranDatePicker.date)
//
//        }
//    }
//
//}


class ViewController: UIViewController {

    let picker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()

        picker.center = view.center
        picker.datePickerMode = .countDownTimer

        self.view.addSubview(picker)

        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60

        let todayDate = Date()
        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
        let twoTearFromToday = todayDate.addingTimeInterval(2 * oneYearTime)

        picker.minimumDate = oneYearFromToday
        picker.maximumDate = twoTearFromToday

        picker.countDownDuration = 2 * 60

        picker.addTarget(self, action: #selector(datePickerChange(paranDatePicker:)), for: .valueChanged)

    }

    @objc func datePickerChange (paranDatePicker: UIDatePicker) {
        if paranDatePicker.isEqual(self.picker) {
            print("dateChange = ", paranDatePicker.date)

        }
    }

}
