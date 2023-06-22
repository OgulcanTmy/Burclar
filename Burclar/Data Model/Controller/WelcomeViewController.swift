//
//  ViewController.swift
//  Burclar
//
//  Created by Oğulcan Tamyürek on 4.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!

    let burclar = ["Boğa", "İkizler", "Terazi", "Yay", "OĞlak"]

    let burcOzellikleri = [BurcOzellikleri(name: "Boğa", info: "Boğa'lar hedefleri doğrultusunda ilerlerken, tüm dikkatlerini toplayabilme yeteneklerinin yanında maddecilikleri ile tanınırlar. SAHİP olma onların yaşam gerçekleridir. Bireysel ilişkiler konusunda son derece güvenilir olan Boğa'lar, insanlara yardım etmekten hoşlanırlar."),
                           BurcOzellikleri(name: "İkizler", info: "İkizler burcuna sahip olan kişiler genel anlamda zeki, kararsız ve hızlı karar değiştiren, ortamlara kolaylıkla uyum sağlayabilen, keşfetmeyi seven ve meraklı, sempatik, iletişim kurmaktan mutluluk duyan, kültürlü, kibar ve mantıklı yapıda olurlar."),
                           BurcOzellikleri(name: "Terazi", info: "Terazi burçları genel olarak akıllı, mantıklı ve aşk dolu özelliklere sahiplerdir. Terazi burçları hayallerine ulaşmak için çok çalışırlar. Terazi burçları genel olarak uzlaşı yanlısı ve kibar özellikleri ile bilinirler. İlişkilerinde adil olan terazi burçları mantıkları ile birlikte hareket ederler."),
                           BurcOzellikleri(name: "Yay", info: "Yay erkil, maceraperest ve risk almaktan, hayata açık durmaktan keyif alan bir burçtur. Burcun sembolünde ileri doğru atılan ok, bu burcun geçmişi değil, geleceğe yönelik olduğunu gösterir. Pozitif ve hayatı olduğu gibi kabul eden tutumları ile Yay'lar keyif veren, geniş görüşlü ve eğlendirici partnerlerdir."),
                           BurcOzellikleri(name: "Oğlak", info: "Oğlaklar ciddilikleri, tutuculukları ve güçlü iradeleri ile tanımlanırlar. Çalışkanlıkları ile kolaylıkla başkalarının saygısını kazanırlar. Gerçek bir Oğlak'ın iki temel özelliği vardır. Güvenilirlik ve dürüstlük.")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        title = "Burclar"
        //navigationItem.hidesBackButton = true
        //tableView.register(UINib(nibName: burcCell, bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }


}
// MARK: - Tableview Datasource Methods
extension WelcomeViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burclar.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let burc = burclar[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        cell.textLabel?.text = "\(burc)"
        cell.accessoryType = .disclosureIndicator
        return cell


        //        cell.label.text = message.body

        // this is a message from the current user.
//        if message.sender == Auth.auth().currentUser?.email {
//            cell.leftImageView.isHidden = true
//            cell.rightImageView.isHidden = false
//            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
//            cell.label.textColor = UIColor(named: K.BrandColors.purple)
//

    }

    // MARK: - Tableview Delegate Methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = indexPath.row
        print(burclar[selectedRow])

        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "goToInfo", sender: tableView)

    }









    }

