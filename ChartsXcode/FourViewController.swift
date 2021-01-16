//
//  FourViewController.swift
//  ChartsXcode
//
//  Created by Janarthan Subburaj on 16/01/21.
//

import UIKit
import Charts

class FourViewController: UIViewController,ChartViewDelegate {

    var radarChart = RadarChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        radarChart.delegate = self
        radarChart.dragDecelerationEnabled = true
        radarChart.isUserInteractionEnabled = true
        UIApplication.shared.endIgnoringInteractionEvents()

    }
    
    override func viewDidLayoutSubviews() {
        radarChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        radarChart.center = view.center
        view.addSubview(radarChart)
        var entries = [RadarChartDataEntry]()
        for x in 0..<10{
            entries.append(RadarChartDataEntry(value: Double(x),data: Double(x)))
        }
        let set = RadarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        let data = RadarChartData(dataSet:set)
        radarChart.data = data
    }


}
