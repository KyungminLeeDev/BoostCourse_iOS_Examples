//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Kyungmin Lee on 2020/05/27.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    // MARK: - Properties
    var player: AVAudioPlayer?
    var timer: Timer?
    
    // MARK: IBOutlets
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var progressSlider: UISlider!
    
    // MARK: - Methods
    // MARK: Custom Method
    func initializePlayer() {
         
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "sound") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player!.delegate = self
        } catch let error as NSError {
            print("플레이어 초기화 실패")
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        guard let player = self.player else {
            print("player == nil")
            return
        }
        self.progressSlider.maximumValue = Float(player.duration)
        self.progressSlider.minimumValue = 0
        self.progressSlider.value = Float(player.currentTime)
        
    }
    
    func updateTimeLabelText(time: TimeInterval) {
        let minute: Int = Int(time / 60)
        let second: Int = Int(time.truncatingRemainder(dividingBy: 60))
        let milisecond: Int = Int(time.truncatingRemainder(dividingBy: 1) * 100)
        
        let timeText: String = String(format: "%02ld:%02ld:%02ld", minute, second, milisecond)
        self.timeLabel.text = timeText
    }
    
    func makeAndFireTimer() {
        
        guard let player = self.player else {
            print("player == nil")
            return
        }
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [unowned self] (timer: Timer) in

            if self.progressSlider.isTracking { return }

            self.updateTimeLabelText(time: player.currentTime)
            self.progressSlider.value = Float(player.currentTime)
        })
        
        guard let timer = self.timer else {
            print("timer == nil")
            return
        }
        
        timer.fire()
    }
    
    func invalidateTimer() {
        guard let timer = self.timer else {
            print("timer == nil")
            return
        }
        
        timer.invalidate()
        self.timer = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initializePlayer()
    }

    @IBAction func touchUpPlayPauseButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        guard let player = self.player else {
            print("player == nil")
            return
        }
        
        if sender.isSelected {
            player.play()
            self.makeAndFireTimer()
        } else {
            player.pause()
            self.invalidateTimer()
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        self.updateTimeLabelText(time: TimeInterval(sender.value))
        if sender.isTracking { return }
        
        guard let player = self.player else {
            print("player == nil")
            return
        }
        
        player.currentTime = TimeInterval(sender.value)
    }
    
    // MARK: AVAudioPlayerDelegate
    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        
        guard let error: Error = error else {
            print("오디오 플레이어 디코드 오류발생")
            return
        }
        
        let message: String
        message = "오디오 플레이어 오류 발생 \(error.localizedDescription)"
        
        let alert: UIAlertController = UIAlertController(title: "알림", message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okAction: UIAlertAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default) { (action: UIAlertAction) -> Void in
            
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        self.playPauseButton.isSelected = false
        self.progressSlider.value = 0
        self.updateTimeLabelText(time: 0)
        self.invalidateTimer()
    }
    
}

