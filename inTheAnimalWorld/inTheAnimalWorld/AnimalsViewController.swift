//
//  AnimalsViewController.swift
//  inTheAnimalWorld
//
//  Created by M1 on 06.07.2022.
//

import UIKit

class AnimalsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    private var animals: [Animal] = []
    private var typeAnimals = [[Animal]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Список животных"
        tableView.delegate = self
        tableView.dataSource = self

        let lionCell = Animal(kind: "Animals", name: "Lion", image: UIImage(named: "lion")!, description: "Лев[1] (лат. Panthera leo) — вид хищных млекопитающих, один из пяти представителей рода пантер (Panthera), относящегося к подсемейству больших кошек (Pantherinae) в составе семейства кошачьих (Felidae). Наряду с тигром — самая крупная из ныне живущих кошек, масса некоторых самцов может достигать 250 кг[2]. Трудно сказать достоверно, массивнее ли крупнейшие подвиды льва, чем крупнейшие подвиды тигров. Связано это с тем, что известные очень большие массы амурских тигров в большинстве своём признаны недостаточно достоверными[3]. Достаточными данными о размерах и массе представителей крупнейших подвидов льва (например, барбарийском) наука не располагает. Что касается живущих в неволе животных, они часто являют собой смешение разных подвидов. Существует мнение, что львы в неволе несколько превышают тигров в размерах и массе[4], так же как и обратное ему.")
        
        let hareCell = Animal(kind: "Animals", name: "Hare", image: UIImage(named: "hare")!, description: "Зайцы (лат. Lepus) — род из семейства зайцевых. Распространены везде, кроме Австралии и Антарктиды, всего около 30 видов. Отличаются длинными ушами, коротким поднятым хвостом, недоразвитыми ключицами, длинными задними лапами, что позволяет им двигаться прыжками. Русак может достигать скорости 70 км/ч.Зайцы живут поодиночке или парами. В отличие от кроликов, зайцы не роют нор, а сооружают гнёзда в небольших ямках. Зайчата рождаются развитыми, с шерстью и открытыми глазами, и мать остаётся с ними всего 5—6 дней, а затем лишь иногда прибегает к ним; вследствие этого много зайчат гибнет от врагов. Зрение у зайцев слабое, обоняние — хорошее, слух — превосходный. Беззащитность по отношению к многочисленным врагам (человек, хищные млекопитающие и птицы) делает их крайне осторожными и скрытными.")
        
        let bearCell = Animal(kind: "Animals", name: "Bear", image: UIImage(named: "bear")!, description: "Медве́жьи[1] (лат. Ursidae) — семейство млекопитающих отряда хищных. Отличаются от других представителей псообразных более коренастым телосложением. Медведи всеядны, хорошо лазают и плавают, быстро бегают, могут стоять и проходить короткие расстояния на задних лапах. Имеют короткий хвост, длинную и густую шерсть, а также отличное обоняние. Охотятся вечером или на рассвете.")
        
        let hornetCell = Animal(kind: "Bug", name: "Hornet", image: UIImage(named: "hornet")!, description: "Ше́ршни[1] (лат. Vespa, букв. «оса») — род общественных ос, для представителей которого характерны крупные размеры; особи вида Vespa mandarinia имеют длину до 55 мм — наибольшую среди общественных ос.")
        
        let storkCell = Animal(kind: "Bird", name: "Stork", image: UIImage(named: "stork")!, description: "Аисты принадлежат к семейству птиц из отряда голенастых. Аисты существуют на Земле с давних времен – по историческим раскопкам ученые смогли описать 27 видов, из них 7 видов можно встретить сегодня в природе.")
        
        let albatrossCell = Animal(kind: "Bird", name: "Albatross", image: UIImage(named: "albatross")!, description: "Альбатросы (лат. Diomedea) — род морских птиц, относящийся к семейству альбатросовых (Diomedeidae). Прежде род включал в себя все виды семейства за исключением дымчатых (Phoebetria) альбатросов (различают светлоспинных и темноспинных дымчатых альбатросов), однако в 1996 году было принято решение зарегистрировать два новых рода Thalassarche и Phoebastria и часть птиц перенести туда. (Nunn et al., 1996) В настоящее время род выделяет две группы птиц — странствующий, галапагосский и амстердамский альбатросы вместе формируют одну группу, а все остальные виды другую. Изменение в классификации было одобрено большинством орнитологов, однако были и противники такого разделения.")
        
        let hummingbirdCell = Animal(kind: "Bird", name: "Hummingbird", image: UIImage(named: "hummingbird")!, description: "Коли́бри[3][4] (лат. Trochilidae) — семейство маленьких птиц из отряда стрижеобразных (Apodiformes). Известно более 350 видов, обитающих в Америке от Аляски и Лабрадора до Огненной Земли, многие виды являются эндемиками. Широко распространены в тропических лесах, особенно на среднегорье. Большую часть рациона колибри составляет богатый углеводами сладкий нектар цветковых растений, который они добывают с помощью длинного чувствительного языка. В качестве белковой добавки выступают мелкие членистоногие, которых птицы ловят в воздухе или снимают с листьев и паутины. Благодаря питанию нектаром колибри являются опылителями; многие растения Нового Света опыляются исключительно ими.")
        
        let parrotCell = Animal(kind: "Bird", name: "Parrot", image: UIImage(named: "parrot")!, description: "Попугаеобра́зные[1] (лат. Psittaciformes) — отряд птиц из инфракласса новонёбных. Отряд состоит примерно из 398 видов[2], принадлежащих к 92 родам[3]. Известны с миоцена.")
        
        let carpCell = Animal(kind: "Fish", name: "Carp", image: UIImage(named: "carp")!, description: "Карпы (лат. Cyprinus) — род рыб семейства карповых.Большинство видов рода обитают на юге Китая и в Юго-Восточной Азии. Исключение составляют два вида. Первый — обыкновенный сазан (Cyprinus carpio), имевший естественный ареал, состоявший из двух частей: водоемы Понто-Каспийско-Аральского и дальневосточного регионов. Он был расселён в водоёмах Северной Америки, Австралии и Евразии за пределами естественного ареала, одомашнен, из него выведены породы карпа, разводимые в прудах. Второй — серебристый карп, завезенный в 1970-е годы в Канаду и США из озера Балхаш (Казахстан) и сильно размножившийся в отсутствие внешних врагов и отлова (из-за обилия костей американцы его не едят). В случае попадания серебристого карпа в Великие озера это грозит уничтожением промысловых рыб местных пород и исчезновением промыслового рыболовства, поэтому на Чикагском канале построен электрический барьер.")
        
        let catfishCell = Animal(kind: "Fish", name: "Catfish", image: UIImage(named: "catfish")!, description: "Обыкнове́нный сом[1], или европейский сом (лат. Silurus glanis) — крупная[2] пресноводная бесчешуйчатая рыба семейства сомовых (Siluridae).Длина тела до 5 м, масса до 400 кг (по историческим данным)[3]. Л. П. Сабанеев приводит сведения Кесслера о поимке сомов массой более 300 кг в XIX веке, в Днепре, Днестре и Одере[4]. Официально зарегистрирован пойманный сом массой 306 кг, длиной более 3 м и возрастом около 80 лет[5]. Сейчас сомы массой выше 100 кг встречаются крайне редко, тем не менее зарегистрированы случаи поимки сомов длиной более 2,5 м и массой около 150 кг[6]. Анальный плавник длинный, жировой плавник отсутствует, непарные плавники не имеют шипов.")
        
        animals = [lionCell, hareCell, bearCell, hornetCell, storkCell, albatrossCell, hummingbirdCell, parrotCell, carpCell, catfishCell]
        
        func generateAnimalsArray() -> [[Animal]] {
            var typeAnimals: [String: [Animal]] = [:]
            for item in animals {
                var animalsByTypeAnimals = typeAnimals[item.kind] ?? []
                animalsByTypeAnimals.append(item)
                typeAnimals[item.kind] = animalsByTypeAnimals
            }
            return Array(typeAnimals.values)
        }
        
        typeAnimals = generateAnimalsArray()
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowAnimalsDescription" else { return }
        guard let destVC = segue.destination as? AnimalsDescriptionViewController else { return }
        guard let tableCell = sender as? UITableViewCell else { return }
        guard let indexPath = tableView.indexPath(for: tableCell) else { return }
        let animals = typeAnimals[indexPath.section][indexPath.row]
        destVC.animals = animals
    }
}

// MARK: -
extension AnimalsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return typeAnimals.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let animals = typeAnimals[section]
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalSpeciesTableViewCell", for: indexPath) as! AnimalSpeciesTableViewCell
        let animalsName = typeAnimals[indexPath.section][indexPath.row].name
        let imageAnimals = typeAnimals[indexPath.section][indexPath.row].image
        cell.update(animals: animalsName, image: imageAnimals)
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let animalsKind = typeAnimals[section].first
        return animalsKind?.kind
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
