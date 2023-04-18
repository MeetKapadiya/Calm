//
//  MainScreenViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 06/03/23.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    // MARK: @IBOutlet in MainScreenViewController
    @IBOutlet weak var imageCollecationView: UICollectionView!
    @IBOutlet weak var secondCollecationView: UICollectionView!
    @IBOutlet weak var thirdCollecationView: UICollectionView!
    @IBOutlet weak var fourCollecationView: UICollectionView!
    @IBOutlet weak var AfternoonResetButton: UIButton!
    @IBOutlet weak var RecommendButton: UIButton!
    @IBOutlet weak var fiveCollecationView: UICollectionView!
    @IBOutlet weak var sixCollecataionView: UICollectionView!
    @IBOutlet weak var sevenCollecationView: UICollectionView!
    @IBOutlet weak var egihtCollecationView: UICollectionView!
    @IBOutlet weak var nineCollecationView: UICollectionView!
    
    
    // MARK: Func Call
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        nibRegisiter()
        mainNibRegisiter()
        secondNibRegisiter()
        thirdNibRegisiter()
        fourNibRegisiter()
        fiveNibRegisiter()
        sixNibRegisiter()
        sevenNibRegisiter()
        EgihtNibRegisiter()
    }
    
    
    // MARK: Nib Register
    
    private func nibRegisiter(){
        let nibFile: UINib = UINib(nibName: "CollectionViewCell", bundle: nil)
        imageCollecationView.register(nibFile, forCellWithReuseIdentifier: "Cell")
    }
    
    private func mainNibRegisiter(){
        let mainNibFile: UINib = UINib(nibName: "MainCollectionViewCell", bundle: nil)
        secondCollecationView.register(mainNibFile, forCellWithReuseIdentifier: "MainCell")
    }
    
    private func secondNibRegisiter(){
        let secondNibFile: UINib = UINib(nibName: "SecondCollectionViewCell", bundle: nil)
        thirdCollecationView.register(secondNibFile, forCellWithReuseIdentifier: "SecondCell")
    }
    
    private func thirdNibRegisiter(){
        let thirdNibFile: UINib = UINib(nibName: "RecommendCollectionViewCell", bundle: nil)
        fourCollecationView.register(thirdNibFile, forCellWithReuseIdentifier: "RecommendCollectionViewCell")
    }
    
    private func fourNibRegisiter(){
        let fourNibFile: UINib = UINib(nibName: "QunikEasyCollectionViewCell", bundle: nil)
        fiveCollecationView.register(fourNibFile, forCellWithReuseIdentifier: "QunikCell")
    }
    
    private func fiveNibRegisiter(){
        let fiverNibFile: UINib = UINib(nibName: "MentalFitnessCollectionViewCell", bundle: nil)
        sixCollecataionView.register(fiverNibFile, forCellWithReuseIdentifier: "MentalFitnessCell")
    }
    
    private func sixNibRegisiter(){
        let sixNibFile: UINib = UINib(nibName: "SleepStorieCollectionViewCell", bundle: nil)
        sevenCollecationView.register(sixNibFile, forCellWithReuseIdentifier: "cellabc")
    }
    
    private func sevenNibRegisiter(){
        let sevenNibFile: UINib = UINib(nibName: "MeditionCollectionViewCell", bundle: nil)
        egihtCollecationView.register(sevenNibFile, forCellWithReuseIdentifier: "MeditionCell")
    }
    
    private func EgihtNibRegisiter(){
        let egihtNibFile: UINib = UINib(nibName: "MusicCollectionViewCell", bundle: nil)
        nineCollecationView.register(egihtNibFile, forCellWithReuseIdentifier: "MusicCell")
    }
    
    
    
    // MARK: @IBOutlet In Button
    
    @IBAction func AfternoonResetButtonTapped(_ sender: Any) {
    }
    
    @IBAction func RecommendButtonTapped(_ sender: Any) {
        
    }
    
}
// MARK: CollecationView

extension MainScreenViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.imageCollecationView{
            return arrImage.count
            return arrLabel.count
            return arrSecondLabel.count
            return arrThirdLabel.count
        } else if collectionView == self.secondCollecationView{
            return arrCellTitle2Image.count
            return arrTitleCell2Name.count
        } else if collectionView == self.thirdCollecationView{
            return arrCellTitle3Image.count
            return arrCellTitle3Label.count
            return arrCellTitle3Label1.count
        }
        else if collectionView == self.fourCollecationView{
            return arrCellTitle4Image.count
            return arrCellTitle4Label.count
            return arrCellTitle4Label1.count
        } else if collectionView == self.fiveCollecationView{
            return arrCellTitle5Image.count
            return arrCEllTitle5Title.count
            return arrCellTitle5Detail.count
            
        } else if collectionView == self.sixCollecataionView{
            return arrCellTitle6Image.count
            return arrCellTitle6Title.count
            return arrCellTitle6Detail.count
        } else if collectionView == self.sevenCollecationView {
            return arrCellTitle7Image.count
            return arrCellTitle7title.count
            return arrCellTitle7Detail.count
        } else if collectionView == self.egihtCollecationView {
            return arrCellTitle8Image.count
            return arrCellTitle8Title.count
            return arrCellTitle8Detail.count
        } else {
            return arrCellTitle9Image.count
            return arrCellTitle9Title.count
            return arrCellTitle9Detail.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.imageCollecationView{
            let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as!CollectionViewCell
            cell.imageView.image = UIImage(named: arrImage[indexPath.row])
            cell.nameLabel.text = "\(arrLabel[indexPath.row])"
            cell.dateLabel.text = "\(arrThirdLabel[indexPath.row])"
            cell.detailsLabel.text = "\(arrSecondLabel[indexPath.row])"
            cell.imageView.layer.cornerRadius = 10
            cell.imageView.layer.masksToBounds = true
            return cell
        } else if collectionView == self.secondCollecationView{
            let cell: MainCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as!MainCollectionViewCell
            cell.secondCollecationImge.image = UIImage(named: arrCellTitle2Image[indexPath.row])
            cell.secondCollecationLabel.text = "\(arrTitleCell2Name[indexPath.row])"
            cell.secondCollecationImge.layer.cornerRadius = 10
            cell.secondCollecationImge.layer.masksToBounds = true
            return cell
        } else if collectionView == self.thirdCollecationView {
            let cell: SecondCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCell", for: indexPath) as!SecondCollectionViewCell
            cell.secondImage.image = UIImage(named: arrCellTitle3Image[indexPath.row])
            cell.titleSecond.text = "\(arrCellTitle3Label[indexPath.row])"
            cell.detailSecond.text = "\(arrCellTitle3Label1[indexPath.row])"
            cell.secondImage.layer.cornerRadius = 20
            cell.secondImage.layer.masksToBounds = true
            return cell
        }
        else if collectionView == self.fourCollecationView{
            let cell: RecommendCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCollectionViewCell", for: indexPath) as! RecommendCollectionViewCell
            cell.recommendImage.image = UIImage(named: arrCellTitle4Image[indexPath.row])
            cell.recommendTitle.text = "\(arrCellTitle4Label[indexPath.row])"
            cell.recommendDeatil.text = "\(arrCellTitle4Label1[indexPath.row])"
            cell.recommendImage.layer.cornerRadius = 10
            cell.recommendImage.layer.masksToBounds = true
            return cell
        } else if collectionView == self.fiveCollecationView{
            let cell: QunikEasyCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "QunikCell", for: indexPath) as! QunikEasyCollectionViewCell
            cell.qunikImage.image = UIImage(named: arrCellTitle5Image[indexPath.row])
            cell.qunikLabel.text = "\(arrCEllTitle5Title[indexPath.row])"
            cell.qunikDetail.text = "\(arrCellTitle5Detail[indexPath.row])"
            cell.qunikImage.layer.cornerRadius = 10
            cell.qunikImage.layer.masksToBounds = true
            return cell
        } else if collectionView == self.sixCollecataionView {
            let cell: MentalFitnessCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MentalFitnessCell", for: indexPath) as! MentalFitnessCollectionViewCell
            cell.mentalFitnessImage.image = UIImage(named: arrCellTitle6Image[indexPath.row])
            cell.mentalFitnessTitle.text = "\(arrCellTitle6Title[indexPath.row])"
            cell.mentalFitnessDetail.text = "\(arrCellTitle6Detail[indexPath.row])"
            cell.mentalFitnessImage.layer.cornerRadius = 10
            cell.mentalFitnessImage.layer.masksToBounds = true
            return cell
        } else if collectionView == self.sevenCollecationView{
            let cell: SleepStorieCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellabc", for: indexPath) as! SleepStorieCollectionViewCell
            cell.sleepStoriesImage.image = UIImage(named: arrCellTitle7Image[indexPath.row])
            cell.sleepStoriesTitle.text = "\(arrCellTitle7title[indexPath.row])"
            cell.sleepStoriesDetail.text = "\(arrCellTitle7Detail[indexPath.row])"
            cell.sleepStoriesImage.layer.cornerRadius = 10
            cell.sleepStoriesImage.layer.masksToBounds = true
            return cell
        } else if collectionView == self.egihtCollecationView {
            let cell: MeditionCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MeditionCell", for: indexPath) as! MeditionCollectionViewCell
            cell.maditationImage.image = UIImage(named: arrCellTitle8Image[indexPath.row])
            cell.meditionTitle.text = "\(arrCellTitle8Title[indexPath.row])"
            cell.meditionDetail.text = "\(arrCellTitle8Detail[indexPath.row])"
            cell.maditationImage.layer.cornerRadius = 10
            cell.maditationImage.layer.masksToBounds = true
            return cell
        } else {
            let cell: MusicCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MusicCell", for: indexPath) as! MusicCollectionViewCell
            cell.musicImage.image = UIImage(named: arrCellTitle9Image[indexPath.row])
            cell.musicTItle.text = "\(arrCellTitle9Title[indexPath.row])"
            cell.musicDetail.text = "\(arrCellTitle9Detail[indexPath.row])"
            cell.musicImage.layer.cornerRadius = 10
            cell.musicImage.layer.masksToBounds = true
            return cell
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension MainScreenViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.imageCollecationView {
            return CGSize(width: 375, height: 312)
        } else if collectionView == self.secondCollecationView {
            return CGSize(width: 180, height: 75)
        } else if collectionView == self.thirdCollecationView{
            return CGSize(width: 216, height:  275)
        } else if collectionView == self.fourCollecationView {
            return CGSize(width: 204, height:  257)
        } else if collectionView == self.fiveCollecationView{
            return CGSize(width: 215, height:  220)
        } else if collectionView == self.sixCollecataionView {
            return CGSize(width: 250, height:  230)
        } else if collectionView == self.sevenCollecationView{
            return CGSize(width: 245, height:  232)
        } else if collectionView == self.egihtCollecationView{
            return CGSize(width: 221, height:  232)
        } else {
            return CGSize(width: 217, height:  285)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        if collectionView == self.imageCollecationView{
            return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 20)
        } else  if collectionView == self.secondCollecationView {
            return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.thirdCollecationView{
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.thirdCollecationView{
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.fourCollecationView{
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.fiveCollecationView {
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.sixCollecataionView {
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.sevenCollecationView{
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else if collectionView == self.egihtCollecationView{
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        } else {
            return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        }
    }
}

