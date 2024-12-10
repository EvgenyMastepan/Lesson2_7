//
//  DataModel.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 10.12.2024.
//

import Foundation

struct Card: Identifiable {
    var id: String = UUID().uuidString
    
    var titul: String
    var image: String
    var exImage: [String]
    var extext: String
    var maintext: String
    var btn: String
    
    static var cards: [Card] {
        [
            Card(titul: "Семейство CVO", image: "1", exImage: ["1_1", "1_2", "1_3"], extext: "KS", maintext: "Harley-Davidson CVO (\"Custom Vehicle Operations\") - это семейство моделей, созданных Harley-Davidson для заводского производства на заказ. Для каждого модельного года с момента запуска программы в 1999 году Harley-Davidson выбирала небольшую подборку серийных моделей мотоциклов и создавала лимитированные модификации этих платформ с двигателями большего объема, более дорогостоящей окраской и дополнительными аксессуарами, которых нет на обычных моделях.[1] Специальные функции линейки CVO включали улучшения характеристик благодаря фирменным деталям Harley \"Screamin Eagle\", ручной росписи в тонкую полоску, обивке сидений и багажников страусиной кожей, нанесенному на краску сусальному золоту и электронным аксессуарам, таким как навигационные системы GPS и музыкальные плееры iPod. Модели CVO производятся на заводе Harley-Davidson в Йорке, штат Пенсильвания, где также производятся модели touring и Softail. В каждом модельном году модели CVO оснащаются двигателями большего объема, чем обычные модели, и эти двигатели большего объема входят в обычную линейку \"big twin\" в течение нескольких лет, когда модели CVO снова модернизируются. Аксессуары, созданные для этих индивидуальных агрегатов, иногда предлагаются в каталоге аксессуаров Harley-Davidson для всех моделей более поздних лет, но маркировка и краска хранятся исключительно у владельцев моделей CVO и не могут быть заменены без предоставления дилеру-заказчику документа, подтверждающего право собственности. Хотя рекомендованная производителем розничная цена моделей CVO выше, чем у моделей, от которых они произошли, и чем у конкурирующих мотоциклов touring и cruiser, с которыми они конкурируют, рецензенты обычно отмечают, что цена является хорошим соотношением цены и качества для приобретаемых настроек: В зависимости от модели, CVO cruiser может легко превысить 35 000 долларов. Но клиенты CVO охотно соглашаются на то, что в противном случае заставило бы многих гонщиков недоверчиво глотнуть American pilsner, как только был обнаружен ценник CVO. Однако опытный владелец Harley CVO, возможно, мудрее, чем можно предположить по его расточительности, поскольку в цене CVO скрыта удивительная ценность, когда речь заходит о байке в индивидуальном стиле... Программа нацелена на того, кого Harley-Davidson называет своим \"Альфа-клиентом\", на того, кто лоялен к бренду и гордится тем, что ездит на лучшем, что может предложить Автомобильная компания. Это люди, которые понимают, что если они выберут двигатель с более высокой производительностью, покрасят свой серийный мотоцикл на заказ и украсят его таким же количеством хрома, как CVO, им придется заплатить еще больший счет, чем цена CVO по прейскуранту.", btn: ""),
            Card(titul: "Семейство Touring", image: "2", exImage: ["2_1", "2_2", "2_3"], extext: "FLHT", maintext: "Машины этого «туристского» семейства, образованного сериями King и Electro Glide, предназначены для дальних поездок по хорошим дорогам и оборудованы мощным (650 Вт) генератором, большим ветровым стеклом, боковыми кофрами. Модель FLHT ELECTRO GLIDE STANDART оснащена обтекателем, запираемыми багажными кофрами, задней подвеской с пневморегулировкой. Модификация FLHTCU ULTRA CLASSIC ELECTRO GLIDE может комплектоваться музыкальной системой Harmann/ Kardon, СВ-радиостанцией, интеркомом, круиз-контролем, задним кофром со спинкой, обтекатель — с регулируемой вентиляцией. Направление «дрессер» («раздетый») представляет мотоцикл Harley-Davidson FLHX STREET GLIDE, у которого есть все для путешествий, но ничего лишнего. На формирование облика мотоцикла «работают» обтекатель, компактное седло малой (668 мм) высоты, обтекаемые багажные кофры. В оснащение входят задняя подвеска с пневмоподкачкой и «продвинутая» аудиосистема. Одна из самых популярных моделей — FLHR ROAD KING — сочетает в себе ностальгические мотивы во внешности и приспособленность к дальним вояжам. Задняя подвеска — с пневморегулировкой. Разновидностями этого «Короля Дорог» стали Harley-Davidson FLHRS ROAD KING CUSTOM в стиле «калифорнийский пляж» и Harley-Davidson FLHRC ROAD KING CLASSIC с улучшенной отделкой кофров, системой круиз-контроля и шинами с белыми боковинами. Мотоциклы Harley-Davidson семейства Touring - идеальный выбор для путешествий. Все мотоциклы серии Touring оснащены тяговитыми и надежными двигателями Twin Cam объемом 1584 cм³, который монтируется на мощной раме через сайлент-блоки (резиновые подушки). А рама опирается на колеса через мягкую, но энергоемкую пневматическую подвеску. Такой тяжелый мотоцикл как Touring нуждается в высокоэффективном торможении, что и гарантируют три четырех-поршневых тормозных скобы (две - спереди, одна - сзади). Каждый мотоцикл семейства Touring уже в базовой комплектации приспособлен к длительным поездкам на дальние расстояния: кофры, противотуманные фары, дуги безопасности, ветровое стекло и глубокие крылья подчеркивают предназначение байка.\n Одна из самых популярных моделей Harley-Davidson серии Touring - мотоцикл FLHR - Road King, оснащенный ветровым стеклом и боковыми багажными кофрами. Глубокое переднее крыло и массивная телескопическая вилка выполнены “в стиле 50-х”. \n Модификация FLHRC - Road King Classic отличается боковыми кофрами, обтянутыми кожей. Мотоцикл FLHT - Electra Glide Standard - прямой наследник славного имени, впервые появившегося еще в 1965 году. Он оснащен ветровым щитком с комбинацией из трех фар и боковыми багажными кофрами. Модель FLHTCU Electra Glide Ultra Classic отличается богатым оснащением. В ее комплектацию входят верхний кофр со спинкой пассажира, обилие контрольных приборов, цифровые часы, стереомагнитола, СВ-радиостанция, интерком и электронный “круиз-контроль”.", btn: ""),
            Card(titul: "Семейство Softail", image: "3", exImage: ["3_1", "3_2", "3_3"], extext: "FX", maintext: "Отличительная черта этого семейства — задняя подвеска, стилизованная под «жесткую», с искусно спрятанными под двигателем горизонтальными амортизаторами и треугольным маятником. Классическую «чопперную» тему воплощает в себе мотоцикл Harley-Davidson FXSTC SOFTRAIL CUSTOM: высокий руль, бензобак «капелькой», двухуровневое седло со спинкой, заднее крыло «рыбкой», узкое переднее колесо большого диаметра, а также широченная задняя шина. Передняя вилка установлена с большим наклоном, подножки водителя вынесены вперед. Мотоциклы Harley-Davidson семейства Softtail это, пожалуй, самые традиционные и классические мотоциклы легендарной американской марки. Название Softail это семейство получило благодаря оригинальной кантилеверной задней подвеске (”softail”, в переводе - “мягкий зад”). Применение этой подвески освобождает заднюю часть мотоцикла от “лишних деталей” и придает ей чистые классические очертания. Подвеска Softtail стилизована под жесткую раму Harley-Davidson 30-40-х годов (так называемый, “hard tail”), а амортизаторы спрятаны под коробкой передач (снизу). Двигатель Twin Cam 96В, в модификации с балансировочными валами для снижения нежелательных вибраций, жестко привинчен к раме, что дает возможность мотоциклисту чувствовать мотоцикл. Базовая модель FXST Softail Standard имеет спицованные колеса, седло с ярко выраженной “ступенькой” и широкий руль. Некоторые модели семейства (Fat Boy, Deuce, Softail Classic) оснащаются двигателем Twin Cam 96B с электронным впрыском топлива. Новое поколение этой системы оснащено функцией защиты двигателя от перегрева. Модель FXSTD Softail Deuce соединяет в себе черты, присущие чопперам и круизерам. Переднее спицованное колесо сочетается со сплошным задним, обутым в широкую шину. Все мотоциклы Harley-Davidson Softtail оснащаются педалями/подножками водителя вынесенными вперед, что обеспечивает расслабленную и комфортную посадку за рулем в стиле чоппер/круизер. Семейство Softail - это настоящий символ американского мотоциклетного стиля. Одна из самых популярных машин — Harley-Davidson FLSTF FAT BOY — существенно модернизирована, причем дело не ограничилось установкой двигателя Twin Cam 96B и шестиступенчатой коробки передач. Модель FLSTF Fat Boy оснащена сплошными колесами без спиц. Так, колеса у «Толстяка» теперь не сплошные, а с «простреленными» (bullet-hole) отверстиями. Сзади установлена шина шириной 200 мм. Часть проводки спрятана внутри низкого и широкого руля, а для водителя и пассажира предусмотрено новое двухместное седло. Экстравагантной рычажной вилкой (которую устанавливали на Springer до 1949 года) комплектуется Harley-Davidson FLSTSC SOFTRAIL SPRINGER CLASSIC. У мотоцикла FXSTS Springer Softail не только задняя, но и передняя подвеска - совершенно невероятного вида рычажная вилка, выполнены в стиле 30-х годов. Модель FLSTN SOFTRAIL DELUXE оборудована другой ностальгической передней вилкой — телескопической, в кожухах. Машину отличают также низкая посадка водителя, шины с белыми боковинами. Другая версия Harley-Davidson FXSTB NIGHT TRAIN выделяется стильным низким рулем, зауженным сзади седлом, “дрегстерного” типа, дисковым задним колесом, выкрашенным в черный цвет двигателем. Мотоцикл FLSTC Heritage Softail Classic стилизован в духе круизеров начала 50-х годов. В частности, его передняя вилка с металлическими хромированными кожухами и огромной фарой скопированы с бестселлера тех годов - мотоцикла Harley-Davidson Hydra Glide. В комплектацию этой модели входят ветровое стекло, боковые кожаные сумки и спинка для пассажира.", btn: ""),
            Card(titul: "Семейство Sportster", image: "4", exImage: ["4_1", "4_2", "4_3"], extext: "XL", maintext: "Это наиболее многочисленное семейство мотоциклов является и самым доступным по цене, причем не лишено и спортивных амбиций. В техническом плане оно отличается от «классических» H-D моноблочной конструкцией силового агрегата, а также узкой, компактной рамой, обеспечивающей лучшую маневренность, чем у “больших машин”. Мотоциклы этой серии комплектуются двигателями объемом 883 и 1200 см3 выполненными в блоке с пятиступенчатой коробкой передач. С момента своего появления (в 1957 году) серия Sportster остается одной из самых популярных во всей гамме Harley-Davidson. Harley-Davidson семейства Sportster - это самые легкие в управлении мотоциклы и доступные по цене мотоциклы, которые однако в полной мере отражают дух Harley-Davidson. Первый мотоцикл серии Sportster появился в 1957 году как спортивная версия Harley-Davidson. Но и дойдя до наших дней, семейство Sportster сохранило частичку своего спортивного характера. Небольшой собственный вес, не слишком большие габариты, проверенный временем двигатель Evolution объемом 883 или 1200 см3 - вот козыри XL Sportster. Многие элементы Harley-Davidson Sportster уже стали мотоциклетной классикой. Например, специфический бензобак этих мотоциклов (”Sporty”) - стал незаменим для создателей радикальных чопперов, а спортивный прямой руль получил название “drag-bar”. Из спортивного прошлого пришли и короткие крылья, и приборы на руле - все это признаки славного происхождения мотоцикла Harley-Davidson Sportster. Но нынешний Sportster более спокойный - он идеален для поездок в городской толчее или с друзьями в выходные по ночным клубам. Для базовой модели XL883 SPORTSTER 883 характерны одноместное седло, низкий «дрегстерный» руль, спицованные колеса, приближенная к классической посадка водителя. Модификации XL883L SPORTSTER 883 LOW и XL1200L SPORTSTER 1200 LOW отличаются уменьшенной высотой седла. Версия XL883R SPORTSTER 883 ROADSTER выполнена в стиле аппарата для популярных в США гонок по земляным трекам, поэтому детали, блестящие на других моделях, окрашены в черный цвет. Для мотоциклов-кастомов Harley-Davidson XL883C SPORTSTER 883 CUSTOM и HarleyDavidson XL1200C SPORTSTER 1200 CUSTOM характерны низкая посадка водителя, высокий руль, бензобак увеличенной до 17 л емкости, вынесенные вперед подножки. Версию XL1200R SPORTSTER 1200 ROADSTER — «спортивную» модификацию — от базовой модели отличают 1200-кубовый двигатель повышенной мощности, усиленный двухдисковый тормоз переднего колеса, широкий полированный руль, тахометр.", btn: "")
        ]
    }
}
