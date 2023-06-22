//
//  ViewController.swift
//  Burclar
//
//  Created by Oğulcan Tamyürek on 4.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    let data = [
        SignFeature(type: .Koç, name: "Koç", info: "Koçlar aşkta son derece oyuncu ve maceracıdırlar. Hevesli doğaları ve atılgan tavırlarıyla aceleci davranabilir ve düşünmeden ilk adımı atabilirler. Onlar için eylem düşünceden önce gelir. Bununla birlikte, haritalarında güçlü Koç burcu kişileri, özellikle Venüs de bu burçtaysa, aşkı bir saman alevi tüketebilirler.", logo: "koç"),
        SignFeature(type: .Boğa, name: "Boğa", info: "Boğa'lar hedefleri doğrultusunda ilerlerken, tüm dikkatlerini toplayabilme yeteneklerinin yanında maddecilikleri ile tanınırlar. Sahip olma onların yaşam gerçekleridir. Bireysel ilişkiler konusunda son derece güvenilir olan Boğa'lar, insanlara yardım etmekten hoşlanırlar.", logo: "boğa"),
        SignFeature(type: .İkizler, name: "İkizler", info: "İkizler burcuna sahip olan kişiler genel anlamda zeki, kararsız ve hızlı karar değiştiren, ortamlara kolaylıkla uyum sağlayabilen, keşfetmeyi seven ve meraklı, sempatik, iletişim kurmaktan mutluluk duyan, kültürlü, kibar ve mantıklı yapıda olurlar.", logo: "ikizler"),
        SignFeature(type: .Yengeç, name: "Yengeç", info: "Yengeç burcu olan kişiler duygusallıkları ve de duyarlılıkları ile tanınırlar. Ayrıca bu kişiler genel manada çevresinde yer alan her insandan hassasiyeti beklerler. İyi günlerinde neşeli, mutlu, iyi kalpli, yardımsever, çok düşünceli ve de anlayışlı kişiler olmaktadırlar.", logo: "yengeç"),
        SignFeature(type: .Aslan, name: "Aslan", info: "İyi zamanlarında etkileyici, güler yüzlü, başkalarına yardım etmeyi seven ve bunu kendine görev sayan Aslan'lar sevimli ve iyimser kişilerdir. Ona karşı hatalı davransanız bile, size olgun bir şekilde tepki verir. Fakat; Sabrı taştıktan sonra, dürüst ve mert, gerektiğinde sert bir şekilde tavır gösterir.", logo: "aslan"),
        SignFeature(type: .Başak, name: "Başak", info: "Başak'lar çalışkan ve pratik insanlar olup, yaşamlarındaki en önemli konu İş' tir. Güvendikleri kişilere yardım etmeyi sevmelerine rağmen, inanmadıkları ve tembel olduklarını bildikleri kişilere karşı soğuk davranırlar. Yaşamları boyunca dinlenmeden çalışırlar. Onların dinlenme biçimi bile başkalarına yorucu gelebilir.", logo: "başak"),
        SignFeature(type: .Terazi, name: "Terazi", info: "Terazi burçları genel olarak akıllı, mantıklı ve aşk dolu özelliklere sahiplerdir. Terazi burçları hayallerine ulaşmak için çok çalışırlar. Terazi burçları genel olarak uzlaşı yanlısı ve kibar özellikleri ile bilinirler. İlişkilerinde adil olan terazi burçları mantıkları ile birlikte hareket ederler.", logo: "terazi"),
        SignFeature(type: .Akrep, name: "Akrep", info: "Akrep burcu özellikleri: Mücadeleci, güçlü, yılmaz, hırslı kişilerdir. Pes ettiğini düşündüğünüz anda küllerinden yeniden doğabilir. Güvenilir, kaliteli insanlardır. Akrep burcu erkeği: Şeytan tüyü de denilebilecek farklı bir gizem, manyetizma ve çekiciliğe sahiptirler.", logo: "akrep"),
        SignFeature(type: .Yay, name: "Yay", info: "Yay erkil, maceraperest ve risk almaktan, hayata açık durmaktan keyif alan bir burçtur. Burcun sembolünde ileri doğru atılan ok, bu burcun geçmişi değil, geleceğe yönelik olduğunu gösterir. Pozitif ve hayatı olduğu gibi kabul eden tutumları ile Yay'lar keyif veren, geniş görüşlü ve eğlendirici partnerlerdir.", logo: "yay"),
        SignFeature(type: .Oğlak, name: "Oğlak", info: "Oğlaklar ciddilikleri, tutuculukları ve güçlü iradeleri ile tanımlanırlar. Çalışkanlıkları ile kolaylıkla başkalarının saygısını kazanırlar. Gerçek bir Oğlak'ın iki temel özelliği vardır. Güvenilirlik ve dürüstlük.", logo: "oğlak"),
        SignFeature(type: .Kova, name: "Kova", info: "Kova burcu insanları sevecen tavırları ile tanınırlar. Bu kişiler bencil değildirler. Irk, cinsiyet ve sosyal durumuna bakmaksızın, herkesin ayni olanaklara sahip olmasını isterler. Modern görünüşlerine karşın, inatçı ve sabit fikirli olurlar.", logo: "kova"),
        SignFeature(type: .Balık, name: "Balık", info: "Balık burcu olan kişiler genel olarak sabırlı, eli açık ve de duyarlı olan insanlardır. Bu kişilerin her daim büyük bir inandırma yetenekleri bulunmaktadır. Dürüst, sadık, vicdan sahibi ve de uysaldırlar. Her çevreye kolay bir şekilde ayak uydurabilirler.", logo: "balık")
    ]

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        title = "Burclar"
        tableView.register(UINib(nibName: "SignCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
}
// MARK: - Tableview Datasource Methods

extension WelcomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! SignCell

        cell.setupUI(data: data[indexPath.row])
        return cell
    }

    // MARK: - Tableview Delegate Methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as? InfoViewController else {
            return
        }
        vc.burc = data[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

