
import Foundation

//let json = """
//
//[
//    {
//        "id": 117334,
//        "title": {
//            "rendered": "НАРЕДНЕ НЕДЕЉЕ БИЋЕ ОДРЖАН САСТАНАК РАДИ РЕШАВАЊА ПРОБЛЕМА ИНСТИТУТА И ЗАВОДА"
//        },
//        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/Institut-za-jz-KG-300x175.jpg"
//    }
//]
//
//"""


//let json = """
//[
//{
//    "id": 117334,
//    "title": {
//        "rendered": "НАРЕДНЕ НЕДЕЉЕ БИЋЕ ОДРЖАН САСТАНАК РАДИ РЕШАВАЊА ПРОБЛЕМА ИНСТИТУТА И ЗАВОДА"
//    },
//    "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/Institut-za-jz-KG-300x175.jpg",
//
//
//    "date": "2020-01-24T10:56:59",
//    "date_gmt": "2020-01-24T08:56:59",
//    "guid": {
//        "rendered": "http://zdravko.org.rs/?p=117334"
//    },
//    "modified": "2020-01-24T10:56:59",
//    "modified_gmt": "2020-01-24T08:56:59",
//    "slug": "%d0%bd%d0%b0%d1%80%d0%b5%d0%b4%d0%bd%d0%b5-%d0%bd%d0%b5%d0%b4%d0%b5%d1%99%d0%b5-%d0%b1%d0%b8%d1%9b%d0%b5-%d0%be%d0%b4%d1%80%d0%b6%d0%b0%d0%bd-%d1%81%d0%b0%d1%81%d1%82%d0%b0%d0%bd%d0%b0%d0%ba-%d1%80",
//    "status": "publish",
//    "type": "post",
//    "link": "http://zdravko.org.rs/%d0%bd%d0%b0%d1%80%d0%b5%d0%b4%d0%bd%d0%b5-%d0%bd%d0%b5%d0%b4%d0%b5%d1%99%d0%b5-%d0%b1%d0%b8%d1%9b%d0%b5-%d0%be%d0%b4%d1%80%d0%b6%d0%b0%d0%bd-%d1%81%d0%b0%d1%81%d1%82%d0%b0%d0%bd%d0%b0%d0%ba-%d1%80/",
//    "content": {
//        "rendered": "<p>Синдикат је обавио више састанака са представницима Министарства здравља поводом настале ситуације у институтима и заводима за јавно здравље.</p>\n<p>Представници ресорног министарства изнели су уверавања да ће у наредном кварталу ове године бити анексирани уговори института и завода са РФЗО, на који начин ће се омогућити нормално функционисање ових установа.</p>\n<p>Такође, планирано је да део запослених буде уговорен са РФЗО.</p>\n<p><strong>Због свега наведеног, у току наредне недеље на позив Министарства здравља биће одржан састанак директора института и завода за јавно здравље.</strong></p>\n<p>Синдикат ће о свему благовремено обавестити своје представнике.</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/Обавештење-24.01.2020.године.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ОВО ОБАВЕШТЕЊЕ</a></p>\n",
//        "protected": false
//    },
//    "excerpt": {
//        "rendered": "<p>Синдикат је обавио више састанака са представницима Министарства здравља поводом настале ситуације у институтима и заводима за јавно здравље. Представници ресорног министарства изнели су уверавања да ће у наредном кварталу ове године бити анексирани уговори института и завода са РФЗО, на који начин ће се омогућити нормално функционисање ових установа. Такође, планирано је да део [&hellip;]</p>\n",
//        "protected": false
//    },
//    "author": 1,
//    "featured_media": 117335,
//    "comment_status": "closed",
//    "ping_status": "closed",
//    "sticky": false,
//    "template": "",
//    "format": "standard",
//    "meta": [],
//    "categories": [
//        2
//    ],
//    "tags": [],
//    "gallery_images": null,
//    "_links": {
//        "self": [
//            {
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117334"
//            }
//        ],
//        "collection": [
//            {
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
//            }
//        ],
//        "about": [
//            {
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
//            }
//        ],
//        "author": [
//            {
//                "embeddable": true,
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
//            }
//        ],
//        "replies": [
//            {
//                "embeddable": true,
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117334"
//            }
//        ],
//        "version-history": [
//            {
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117334/revisions"
//            }
//        ],
//        "wp:featuredmedia": [
//            {
//                "embeddable": true,
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117335"
//            }
//        ],
//        "wp:attachment": [
//            {
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117334"
//            }
//        ],
//        "wp:term": [
//            {
//                "taxonomy": "category",
//                "embeddable": true,
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117334"
//            },
//            {
//                "taxonomy": "post_tag",
//                "embeddable": true,
//                "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117334"
//            }
//        ],
//        "curies": [
//            {
//                "name": "wp",
//                "href": "https://api.w.org/{rel}",
//                "templated": true
//            }
//        ]
//    }
//}
//]
//"""

let json = """

[
    {
        "id": 117334,
        "date": "2020-01-24T10:56:59",
        "date_gmt": "2020-01-24T08:56:59",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117334"
        },
        "modified": "2020-01-24T10:56:59",
        "modified_gmt": "2020-01-24T08:56:59",
        "slug": "%d0%bd%d0%b0%d1%80%d0%b5%d0%b4%d0%bd%d0%b5-%d0%bd%d0%b5%d0%b4%d0%b5%d1%99%d0%b5-%d0%b1%d0%b8%d1%9b%d0%b5-%d0%be%d0%b4%d1%80%d0%b6%d0%b0%d0%bd-%d1%81%d0%b0%d1%81%d1%82%d0%b0%d0%bd%d0%b0%d0%ba-%d1%80",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%bd%d0%b0%d1%80%d0%b5%d0%b4%d0%bd%d0%b5-%d0%bd%d0%b5%d0%b4%d0%b5%d1%99%d0%b5-%d0%b1%d0%b8%d1%9b%d0%b5-%d0%be%d0%b4%d1%80%d0%b6%d0%b0%d0%bd-%d1%81%d0%b0%d1%81%d1%82%d0%b0%d0%bd%d0%b0%d0%ba-%d1%80/",
        "title": {
            "rendered": "НАРЕДНЕ НЕДЕЉЕ БИЋЕ ОДРЖАН САСТАНАК РАДИ РЕШАВАЊА ПРОБЛЕМА ИНСТИТУТА И ЗАВОДА"
        },
        "content": {
            "rendered": "<p>Синдикат је обавио више састанака са представницима Министарства здравља поводом настале ситуације у институтима и заводима за јавно здравље.</p>\n<p>Представници ресорног министарства изнели су уверавања да ће у наредном кварталу ове године бити анексирани уговори института и завода са РФЗО, на који начин ће се омогућити нормално функционисање ових установа.</p>\n<p>Такође, планирано је да део запослених буде уговорен са РФЗО.</p>\n<p><strong>Због свега наведеног, у току наредне недеље на позив Министарства здравља биће одржан састанак директора института и завода за јавно здравље.</strong></p>\n<p>Синдикат ће о свему благовремено обавестити своје представнике.</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/Обавештење-24.01.2020.године.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ОВО ОБАВЕШТЕЊЕ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Синдикат је обавио више састанака са представницима Министарства здравља поводом настале ситуације у институтима и заводима за јавно здравље. Представници ресорног министарства изнели су уверавања да ће у наредном кварталу ове године бити анексирани уговори института и завода са РФЗО, на који начин ће се омогућити нормално функционисање ових установа. Такође, планирано је да део [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117335,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/Institut-za-jz-KG-300x175.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117334"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117334"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117334/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117335"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117334"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117334"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117334"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117330,
        "date": "2020-01-23T14:06:39",
        "date_gmt": "2020-01-23T12:06:39",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117330"
        },
        "modified": "2020-01-23T14:07:29",
        "modified_gmt": "2020-01-23T12:07:29",
        "slug": "%d1%81%d0%b0%d0%be%d0%bf%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d0%bf%d0%be%d0%b2%d0%be%d0%b4%d0%be%d0%bc-%d1%98%d0%be%d1%88-%d1%98%d0%b5%d0%b4%d0%bd%d0%be%d0%b3-%d0%b1%d1%80%d1%83%d1%82%d0%b0%d0%bb%d0%bd",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d1%81%d0%b0%d0%be%d0%bf%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d0%bf%d0%be%d0%b2%d0%be%d0%b4%d0%be%d0%bc-%d1%98%d0%be%d1%88-%d1%98%d0%b5%d0%b4%d0%bd%d0%be%d0%b3-%d0%b1%d1%80%d1%83%d1%82%d0%b0%d0%bb%d0%bd/",
        "title": {
            "rendered": "САОПШТЕЊЕ ПОВОДОМ ЈОШ ЈЕДНОГ БРУТАЛНОГ НАПАДА НА ЗАПОСЛЕНЕ У ЗДРАВСТВУ"
        },
        "content": {
            "rendered": "<p>Поводом још једног ничим изазваног бруталног напада на запослене медицинске техничаре који се догодио у Служби хитне помоћи Дома здравља у Краљеву, напада који је извршио припадник одреда Жандармерије, у цивилу и ван дужности, Синдикат запослених у здравству и социјалној заштити још једном указује на неопходност измене Кривичног законика у смислу пооштравања казнене политике за овакве врсте напада и увођење новог кривичног дела <strong>НАПАД НА ЗАПОСЛЕНЕ У ДЕЛАТНОСТИ ЗДРАВСТВА И СОЦИЈАЛНЕ ЗАШТИТЕ</strong>, на начин како је то прописано у Кривичном законику за кривично дело напад на адвокате.</p>\n<p>Ово кривично дело је уведено муњевитом брзином и имплементирано у закон, а за предлог Синдиката представници Министарства правде се нису удостојили ни да нам дају одговор!!!</p>\n<p><strong>ПИТАМО СЕ ПО ЧЕМУ СУ ТО АДВОКАТИ ВАЖНИЈИ ОД ЛЕКАРА, МЕДИЦИНСКЕ СЕСТРЕ/ТЕХНИЧАРА, ЗДРАВСТВЕНОГ САРАДНИКА, ПРАВНИКА ИЛИ БИЛО КОГ ДРУГОГ ЗАПОСЛЕНОГ У ДЕЛАТНОСТИ ЗДРАВСТВА И СОЦИЈАЛНЕ ЗАШТИТЕ, ПА ДА СЕ ПРЕДЛОГ СИНДИКАТА НЕ УЗМЕ ЧАК НИ У РАЗМАТРАЊЕ???</strong></p>\n<p>Напомињемо да смо годинама уназад упућивали иницијативе надлежним државним органима у смислу да се изврши измена и допуна КЗ-а, како би запослени у делатности здравства и социјалне заштите уживали заштиту од свакодневних напада. Нажалост, до данашњег дана нисмо наишли на разумевање и иницијатива није прихваћена.</p>\n<p>Запослени се осећају потпуно незаштићени од напада, који су нажалост све чешћи и подстакнути и свакодневним блаћењем професије у појединим средствима јавног информисања.</p>\n<p>Предлог Синдиката је да се уведе ново кривично дело напад на запослене у здравству и социјалној заштити, на начин да се омогући тужилаштву да се за исто гони по службеној дужности, што би свакако деловало на потенцијалне учиниоце кривичних дела да добро размисле пре него их учине.</p>\n<p>У конкретном случају који се догодио у ДЗ Краљево, напомињемо да је учинилац вербалним, а затим и физичким нападом на двојицу медицинских техничара који су задобили лакше повреде, починио више могућих кривичних дела за које се гони по приватној тужби, пошто је надлежни тужилац утврдио да нема елемената кривичног дела за које се гони по службеној дужности.</p>\n<h3><strong>Апелујемо још једном ПООШТРИТЕ КАЗНЕНУ ПОЛИТИКУ!!!</strong></h3>\n<p><strong>КОЛИКО ЈОШ ЖИВОТА ЗАПОСЛЕНИХ ТРЕБА ДА БУДЕ ИЗГУБЉЕНО ИЛИ УГРОЖЕНО КАКО БИ КОНАЧНО НАДЛЕЖНИ ДРЖАВНИ ОРГАНИ ПРИХВАТИЛИ ВИШЕДЕЦЕНИЈСКУ ИНИЦИЈАТИВУ СИНДИКАТА ЗА ИЗМЕНУ КЗ???</strong></p>\n<p><strong>ЗБОГ СВЕГА НАВЕДЕНОГ, СИНДИКАТ ОД ОВОГ ЗАХТЕВА НЕЋЕ ОДУСТАТИ.</strong></p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/Saopštenje-napad-na-zaposlene-23.01.2020.године.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ОВО САОПШТЕЊЕ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Поводом још једног ничим изазваног бруталног напада на запослене медицинске техничаре који се догодио у Служби хитне помоћи Дома здравља у Краљеву, напада који је извршио припадник одреда Жандармерије, у цивилу и ван дужности, Синдикат запослених у здравству и социјалној заштити још једном указује на неопходност измене Кривичног законика у смислу пооштравања казнене политике за [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117331,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            8
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/krivicni_zakonik-RS-300x225.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117330"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117330"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117330/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117331"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117330"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117330"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117330"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117325,
        "date": "2020-01-21T15:25:37",
        "date_gmt": "2020-01-21T13:25:37",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117325"
        },
        "modified": "2020-01-21T15:27:43",
        "modified_gmt": "2020-01-21T13:27:43",
        "slug": "%d1%81%d0%b8%d0%bd%d0%b4%d0%b8%d0%ba%d0%b0%d1%82-%d1%98%d0%b5-%d0%b8%d0%b7%d1%80%d0%b0%d0%b4%d0%b8%d0%be-%d0%b4%d0%b5%d1%82%d0%b0%d1%99%d0%bd%d1%83-%d0%b0%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7%d1%83-%d0%bf-2",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d1%81%d0%b8%d0%bd%d0%b4%d0%b8%d0%ba%d0%b0%d1%82-%d1%98%d0%b5-%d0%b8%d0%b7%d1%80%d0%b0%d0%b4%d0%b8%d0%be-%d0%b4%d0%b5%d1%82%d0%b0%d1%99%d0%bd%d1%83-%d0%b0%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7%d1%83-%d0%bf-2/",
        "title": {
            "rendered": "СИНДИКАТ ЈЕ ИЗРАДИО ДЕТАЉНУ АНАЛИЗУ ПКУ ЗА ДЕЛАТНОСТ ЗДРАВСТВА СА ПОСЕБНИМ ОСВРТОМ НА НОВА ПРАВА КОЈА ЈЕ УСПЕО ДА ИЗБОРИ ЗА ЗАПОСЛЕНЕ"
        },
        "content": {
            "rendered": "<p>Драги чланови,</p>\n<p>Обавештавамо Вас да је Синдикат израдио детаљну анализу Посебног колективног уговора за здравствене установе  чији је оснивач Република Србија, аутономна покрајина и јединица локалне самоуправе (&#8222;Сл. гласник РС&#8220;, бр. 96/2019) и у вези са тим, <strong>која је права успео да избори за запослене.</strong></p>\n<p>Анализа ПКУ је прослеђена свим председницима синдикалних организација, од којих исту можете преузети и упознати се са својим новим правима.</p>\n<p>&nbsp;</p>\n<h3 style=\"text-align: center;\"><strong>ЧЕСТИТАМО СВИМ ЧЛАНОВИМА НОВИ, БОЉИ КОЛЕКТИВНИ УГОВОР КОЈИ ЈЕ ЗАКЉУЧЕН НА ПЕРИОД ОД ТРИ ГОДИНЕ!!!</strong></h3>\n<h4 style=\"text-align: center;\">НАСТАВЉАМО АКТИВНОСТИ НА ПОБОЉШАЊУ   УСЛОВА РАДА И МАТЕРИЈАЛНОГ ПОЛОЖАЈА ЗАПОСЛЕНИХ!</h4>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/Обавештење-21.01.2020.године.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ОВО ОБАВЕШТЕЊЕ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Драги чланови, Обавештавамо Вас да је Синдикат израдио детаљну анализу Посебног колективног уговора за здравствене установе  чији је оснивач Република Србија, аутономна покрајина и јединица локалне самоуправе (&#8222;Сл. гласник РС&#8220;, бр. 96/2019) и у вези са тим, која је права успео да избори за запослене. Анализа ПКУ је прослеђена свим председницима синдикалних организација, од којих [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117326,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/zastava-sindikat-1280x640-300x150.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117325"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117325"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117325/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117326"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117325"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117325"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117325"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117320,
        "date": "2020-01-16T15:17:30",
        "date_gmt": "2020-01-16T13:17:30",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117320"
        },
        "modified": "2020-01-16T15:17:30",
        "modified_gmt": "2020-01-16T13:17:30",
        "slug": "%d0%b8%d0%bd%d0%b8%d1%86%d0%b8%d1%98%d0%b0%d1%82%d0%b8%d0%b2%d0%b0-%d0%b7%d0%b0-%d1%85%d0%b8%d1%82%d0%bd%d0%be-%d0%bf%d0%be%d1%81%d1%82%d1%83%d0%bf%d0%b0%d1%9a%d0%b5-%d0%b8-%d1%80%d0%b5%d1%88%d0%b0",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%b8%d0%bd%d0%b8%d1%86%d0%b8%d1%98%d0%b0%d1%82%d0%b8%d0%b2%d0%b0-%d0%b7%d0%b0-%d1%85%d0%b8%d1%82%d0%bd%d0%be-%d0%bf%d0%be%d1%81%d1%82%d1%83%d0%bf%d0%b0%d1%9a%d0%b5-%d0%b8-%d1%80%d0%b5%d1%88%d0%b0/",
        "title": {
            "rendered": "ИНИЦИЈАТИВА ЗА ХИТНО ПОСТУПАЊЕ И РЕШАВАЊЕ РАДНО-ПРАВНОГ ПОЛОЖАЈА ЗАПОСЛЕНИХ У ИНСТИТУТИМА И ЗАВОДИМА ЗА ЈАВНО ЗДРАВЉЕ И ОЧУВАЊЕ ЈАВНОГ ЗДРАВЉА"
        },
        "content": {
            "rendered": "<p><strong>МИНИСТАРСТВО ЗДРАВЉА</strong><br />\nМинистар, асс. др Златибор Лончар</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>На иницијативу чланства, представника Синдиката запослених у институтима и заводима за јавно здравље, <strong>Синдикат запослених у здравству и социјалној заштити Србије</strong> Вам упућује Иницијативу за решавање радно-правног и материјалног положаја запослених у овим установама на јединствен начин.</p>\n<p>Наиме, у финансијском плану РФЗО за 2020.годину, значајно су умањена средства (за око 60%) која су намењена институтима и заводима за јавно здравље.</p>\n<p>Ова средства нису довољна за нормално функционисање установа.</p>\n<p>РФЗО је до сада учествовао у финансирању плата запослених у институтима и заводима у износу од 34%, приходи из буџета РС износе 16%, а остатак од 50% установе финансирају из прихода који остваре на тржишту.</p>\n<p>Са овако умањеним средствима, због нелојалне конкуренције на тржишту и неспровођења Закона о јавном здрављу, овим установама прети гашење.</p>\n<p>Захтевамо да по хитном поступку предузмете све мере у оквиру законом поверених надлежности, како би се овај проблем решио на јединствен начин, на задовољство запослених и грађана Републике Србије, а ради очувања јавног здравља.</p>\n<p>Отворени смо за разговор на ову тему у времену када то Вама одговора и нудимо конкретна решења.</p>\n<p>Очекујемо, Вашу хитну реакцију у циљу очувања јавног здравља и радно-правног положаја запослених.</p>\n<p>&nbsp;</p>\n<p><strong>Председник</strong><br />\nдр Зоран Савић</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/Dopis-Zavodi-15.01.2020..pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ДОКУМЕНТ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>МИНИСТАРСТВО ЗДРАВЉА Министар, асс. др Златибор Лончар &nbsp; &nbsp; На иницијативу чланства, представника Синдиката запослених у институтима и заводима за јавно здравље, Синдикат запослених у здравству и социјалној заштити Србије Вам упућује Иницијативу за решавање радно-правног и материјалног положаја запослених у овим установама на јединствен начин. Наиме, у финансијском плану РФЗО за 2020.годину, значајно су [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117322,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/Institut-Batut-16102020-300x201.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117320"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117320"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117320/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117322"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117320"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117320"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117320"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117316,
        "date": "2020-01-14T12:54:55",
        "date_gmt": "2020-01-14T10:54:55",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117316"
        },
        "modified": "2020-01-14T12:54:55",
        "modified_gmt": "2020-01-14T10:54:55",
        "slug": "%d0%be%d0%b1%d0%b0%d0%b2%d0%b5%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d0%be-%d0%bf%d1%80%d0%b8%d0%b7%d0%bd%d0%b0%d0%b2%d0%b0%d1%9a%d1%83-%d1%82%d1%80%d0%be%d1%88%d0%ba%d0%be%d0%b2%d0%b0-%d0%bf%d1%80%d0%b5",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%be%d0%b1%d0%b0%d0%b2%d0%b5%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d0%be-%d0%bf%d1%80%d0%b8%d0%b7%d0%bd%d0%b0%d0%b2%d0%b0%d1%9a%d1%83-%d1%82%d1%80%d0%be%d1%88%d0%ba%d0%be%d0%b2%d0%b0-%d0%bf%d1%80%d0%b5/",
        "title": {
            "rendered": "ОБАВЕШТЕЊЕ О ПРИЗНАВАЊУ ТРОШКОВА ПРЕВОЗА"
        },
        "content": {
            "rendered": "<p>Закон о порезу на доходак грађана омогућава послодавцу да не плаћа порез на зараде на примања запосленог од послодавца по основу накнаде <strong>документованих</strong> трошкова превоза за долазак и одлазак са рада.</p>\n<p>Иновирани Закон о порезу на доходак грађана примењује се од 1. jануара 2020.године.</p>\n<p>Уколико послодавац нема веродостojне исправе на основу којих доказује да је на адекватан начин надокнадио трошак запосленoг за долазак и одлазак са рада ( нпр. рачун за куповину месечне претплатне карте, рачун за гориво и сл.) на исплаћени износ плаћа порез од 10%.</p>\n<p><strong>Послодавац уколико нема организован сопствени превоз може у складу са законом да:</strong></p>\n<ol>\n<li>Запосленима купује карте за превоз директним уплатама превознику;</li>\n<li>Обавеже запослене да правдају трошкове свог доласка адекватним рачунима или</li>\n<li>Плати порез од 10% уколико запосленима плати трошкове без рачуна.</li>\n</ol>\n<p>На основу наведеног, запослени је у обавези да на захтев послодавца истом достави рачун којим документује трошкове за долазак и одлазак са рада.</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/PRIZNAVANJE-TROSKOVA-PREVOZA.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ДОКУМЕНТ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Закон о порезу на доходак грађана омогућава послодавцу да не плаћа порез на зараде на примања запосленог од послодавца по основу накнаде документованих трошкова превоза за долазак и одлазак са рада. Иновирани Закон о порезу на доходак грађана примењује се од 1. jануара 2020.године. Уколико послодавац нема веродостojне исправе на основу којих доказује да је [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117317,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/PREVOZ_14012020-300x199.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117316"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117316"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117316/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117317"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117316"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117316"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117316"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117312,
        "date": "2020-01-10T11:31:34",
        "date_gmt": "2020-01-10T09:31:34",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117312"
        },
        "modified": "2020-01-10T11:31:34",
        "modified_gmt": "2020-01-10T09:31:34",
        "slug": "%d0%b7%d0%b0%d1%85%d1%82%d0%b5%d0%b2-%d0%b7%d0%b0-%d0%b4%d0%be%d0%bd%d0%be%d1%88%d0%b5%d1%9a%d0%b5-%d0%b7%d0%b0%d0%ba%d1%99%d1%83%d1%87%d0%ba%d0%b0-%d0%b2%d0%bb%d0%b0%d0%b4%d0%b5-%d1%80%d0%b5%d0%bf-3",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%b7%d0%b0%d1%85%d1%82%d0%b5%d0%b2-%d0%b7%d0%b0-%d0%b4%d0%be%d0%bd%d0%be%d1%88%d0%b5%d1%9a%d0%b5-%d0%b7%d0%b0%d0%ba%d1%99%d1%83%d1%87%d0%ba%d0%b0-%d0%b2%d0%bb%d0%b0%d0%b4%d0%b5-%d1%80%d0%b5%d0%bf-3/",
        "title": {
            "rendered": "ЗАХТЕВ ЗА ДОНОШЕЊЕ ЗАКЉУЧКА ВЛАДЕ РЕПУБЛИКЕ СРБИЈЕ КАКО БИ СЕ ЗАПОСЛЕНИМА У ДЕЛАТНОСТИ ЗДРАВСТВА ОМОГУЋИЛА ИСПЛАТА ПЛАТЕ, ПУТНИХ ТРОШКОВА И ДРУГИХ ПРИМАЊА"
        },
        "content": {
            "rendered": "<p><strong>ВЛАДА РЕПУБЛИКЕ СРБИЈЕ<br />\n</strong>Председник, Ана Брнабић</p>\n<p><strong>МИНИСТАРСТВО ФИНАНСИЈА<br />\n</strong>Министар, Синиша Мали</p>\n<p><strong>МИНИСТАРСТВО ЗДРАВЉА<br />\n</strong>Министар, асс. др Златибор Лончар</p>\n<p>&nbsp;</p>\n<p><strong>Синдикат запослених у здравству и социјалној заштити Србије</strong> обраћа Вам се са захтевом да Владa Републике Србије донесе Закључак којим би се омогућила исплата плата, путних трошкова и других примања запосленима у здравственим установама које се налазе у блокади.</p>\n<p>Наиме, рачуни појединих здравствених установа налазе се у блокади дужи временски период и због тога запослени у овим установама не могу имати принадлежности прописане позитивним прописима, док се не донесе одговарајући закључак Владе.</p>\n<p>Запослени нису одговорни за наведено стање, а своје радне задатке извршавају савесно, професионално и у складу са правилима струке, како би се корисницима услуга пружила здравствена заштита у складу са законом.</p>\n<p>Синдикат захтева да се изнађе решење које би омогућило запосленима исплату плата, трошкова и других примања у складу са законом и закљученим новим Посебним колективним уговором за здравствене установе чији је оснивач Република Србија, аутономна покрајина и јединица локалне самоуправе.</p>\n<p>Указујемо да је потребно да Влада Републике Србије донесе Закључак о трансферу новчаних средстава на посебне рачуне здравствених установа које су у блокади, који би био изузет од принудне наплате и који би се користио за исплату свих личних примања запослених.</p>\n<p><strong>Молимо да ресорна министарства прихвате ову иницијативу Синдиката и дају предлог Влади Републике Србије</strong> <u>да се наведени закључак односи на све здравствене установе из Плана мреже којима се рачун налази у блокади у 2020. години, на начин како је то рађено и у протеклим годинама.</u></p>\n<p>Очекујемо Ваше поступање у најкраћем могућем року.</p>\n<p>&nbsp;</p>\n<p><strong>Председник</strong><br />\nдр Зоран Савић</p>\n<p><strong> </strong></p>\n<p><a href=\"/wp-content/uploads/2020/01/dopis-vladi.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ДОКУМЕНТ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>ВЛАДА РЕПУБЛИКЕ СРБИЈЕ Председник, Ана Брнабић МИНИСТАРСТВО ФИНАНСИЈА Министар, Синиша Мали МИНИСТАРСТВО ЗДРАВЉА Министар, асс. др Златибор Лончар &nbsp; Синдикат запослених у здравству и социјалној заштити Србије обраћа Вам се са захтевом да Владa Републике Србије донесе Закључак којим би се омогућила исплата плата, путних трошкова и других примања запосленима у здравственим установама које се [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117313,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            11
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2020/01/10012020_DOKTOR-300x144.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117312"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117312"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117312/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117313"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117312"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117312"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117312"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117309,
        "date": "2020-01-09T12:02:38",
        "date_gmt": "2020-01-09T10:02:38",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117309"
        },
        "modified": "2020-01-09T12:02:38",
        "modified_gmt": "2020-01-09T10:02:38",
        "slug": "%d0%bd%d0%be%d0%b2%d0%b8-%d0%bf%d0%be%d1%81%d0%b5%d0%b1%d0%b0%d0%bd-%d0%ba%d0%be%d0%bb%d0%b5%d0%ba%d1%82%d0%b8%d0%b2%d0%bd%d0%b8-%d1%83%d0%b3%d0%be%d0%b2%d0%be%d1%80-%d0%b4%d0%be%d1%81%d1%82%d1%83",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%bd%d0%be%d0%b2%d0%b8-%d0%bf%d0%be%d1%81%d0%b5%d0%b1%d0%b0%d0%bd-%d0%ba%d0%be%d0%bb%d0%b5%d0%ba%d1%82%d0%b8%d0%b2%d0%bd%d0%b8-%d1%83%d0%b3%d0%be%d0%b2%d0%be%d1%80-%d0%b4%d0%be%d1%81%d1%82%d1%83/",
        "title": {
            "rendered": "НОВИ ПОСЕБАН КОЛЕКТИВНИ УГОВОР ДОСТУПАН ЗА ПРЕУЗИМАЊЕ"
        },
        "content": {
            "rendered": "<p>Обавештавамо Вас да је нови ПКУ за 2020.годину доступан за преузимање на нашем сајту.</p>\n<p>Можете га преузети на страници <a href=\"http://zdravko.org.rs/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82%d0%b8/\" target=\"_blank\" rel=\"noopener noreferrer\">ДОКУМЕНТИ </a>или кликом на линк испод:</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2020/01/PKU-koji-je-se-primenjuje-počev-od-09.012020.godine.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ПКУ ЗА 2020.ГОДИНУ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Обавештавамо Вас да је нови ПКУ за 2020.годину доступан за преузимање на нашем сајту. Можете га преузети на страници ДОКУМЕНТИ или кликом на линк испод: &nbsp; ПРЕУЗМИТЕ ПКУ ЗА 2020.ГОДИНУ</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117288,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2019/12/PKU-27122019-300x192.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117309"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117309"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117309/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117288"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117309"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117309"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117309"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117299,
        "date": "2019-12-31T12:41:51",
        "date_gmt": "2019-12-31T10:41:51",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117299"
        },
        "modified": "2019-12-31T12:49:58",
        "modified_gmt": "2019-12-31T10:49:58",
        "slug": "%d0%b2%d0%b0%d0%b6%d0%bd%d0%be-%d0%be%d0%b1%d0%b0%d0%b2%d0%b5%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d0%bf%d0%be%d1%82%d0%bf%d0%b8%d1%81%d0%b0%d0%bd-%d0%bd%d0%be%d0%b2%d0%b8-%d0%bf%d0%ba%d1%83-%d0%b7%d0%b0",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%b2%d0%b0%d0%b6%d0%bd%d0%be-%d0%be%d0%b1%d0%b0%d0%b2%d0%b5%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d0%bf%d0%be%d1%82%d0%bf%d0%b8%d1%81%d0%b0%d0%bd-%d0%bd%d0%be%d0%b2%d0%b8-%d0%bf%d0%ba%d1%83-%d0%b7%d0%b0/",
        "title": {
            "rendered": "ВАЖНО ОБАВЕШТЕЊЕ &#8211; ПОТПИСАН НОВИ ПКУ ЗА ДЕЛАТНОСТ ЗДРАВСТВА"
        },
        "content": {
            "rendered": "<p>Данас је у просторијама Министарства здравља потписан нови Посебан колективни уговор за здравствене установе чији је оснивач Република Србија, аутономна покрајина и јединица локалне самоуправе.</p>\n<p><img class=\"size-large wp-image-117303 aligncenter\" src=\"http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" srcset=\"http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11-1024x768.jpg 1024w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11-300x225.jpg 300w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11-768x576.jpg 768w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11-1080x810.jpg 1080w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11-200x150.jpg 200w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-11.jpg 1600w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></p>\n<p>Потписници овог уговора су: асс. др Златибор Лончар министар здравља испред Владе Републике Србије, др Зоран Савић председник Синдиката запослених у здравству и социјалној заштити Србије и Зоран Илић председник Гранског синдиката здравства и социјалне заштите &#8222;Независност&#8220;.</p>\n<p><img class=\"size-large wp-image-117302 aligncenter\" src=\"http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-3-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" srcset=\"http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-3-768x1024.jpg 768w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-3-225x300.jpg 225w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-3-1080x1440.jpg 1080w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-3-150x200.jpg 150w, http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-3.jpg 1200w\" sizes=\"(max-width: 768px) 100vw, 768px\" /></p>\n<p><strong>Уговор важи наредне три године, а примењује се почев од 09.јануара 2020.године.</strong></p>\n<p><strong>Републички одбор Синдиката свим члановима честита нови ПКУ и жели срећне божићне и новогодишње празнике.</strong></p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2019/12/Обавештење-ПКУ-31.12.2019.године.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ДОКУМЕНТ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Данас је у просторијама Министарства здравља потписан нови Посебан колективни уговор за здравствене установе чији је оснивач Република Србија, аутономна покрајина и јединица локалне самоуправе. Потписници овог уговора су: асс. др Златибор Лончар министар здравља испред Владе Републике Србије, др Зоран Савић председник Синдиката запослених у здравству и социјалној заштити Србије и Зоран Илић председник [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117300,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2019/12/30122019-300x225.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117299"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117299"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117299/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117300"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117299"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117299"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117299"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117295,
        "date": "2019-12-30T15:36:20",
        "date_gmt": "2019-12-30T13:36:20",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117295"
        },
        "modified": "2019-12-30T15:36:20",
        "modified_gmt": "2019-12-30T13:36:20",
        "slug": "%d0%b2%d0%b0%d0%b6%d0%bd%d0%be-%d0%be%d0%b1%d0%b0%d0%b2%d0%b5%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d1%80%d0%be%d1%81-%d0%b4%d0%b0%d0%be-%d1%81%d0%b0%d0%b3%d0%bb%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82-%d0%b7",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%b2%d0%b0%d0%b6%d0%bd%d0%be-%d0%be%d0%b1%d0%b0%d0%b2%d0%b5%d1%88%d1%82%d0%b5%d1%9a%d0%b5-%d1%80%d0%be%d1%81-%d0%b4%d0%b0%d0%be-%d1%81%d0%b0%d0%b3%d0%bb%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82-%d0%b7/",
        "title": {
            "rendered": "ВАЖНО ОБАВЕШТЕЊЕ &#8211; РОС ДАО САГЛАСНОСТ ЗА ПОТПИСИВАЊЕ ПКУ"
        },
        "content": {
            "rendered": "<p>На данашњем састанку у Министарству здравља вођени су преговори за закључивање новог ПКУ за делатност здравства, сходно примедбама које су упућене од стране Министарства финансија.</p>\n<p>Након одржаног састанка, одржана је хитна седница Републичког одбора Синдиката.</p>\n<p>Већином гласова, РОС је донео Одлуку да се прихвати измењени текст ПКУ и да се приступи процедури потписивања истог.</p>\n<p>За уторак, 31.12.2019. године планирано је потписивање новог ПКУ за делатност здравства.</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2019/12/Обавештење-ПКУ-30.12.2019.године.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ДОКУМЕНТ</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>На данашњем састанку у Министарству здравља вођени су преговори за закључивање новог ПКУ за делатност здравства, сходно примедбама које су упућене од стране Министарства финансија. Након одржаног састанка, одржана је хитна седница Републичког одбора Синдиката. Већином гласова, РОС је донео Одлуку да се прихвати измењени текст ПКУ и да се приступи процедури потписивања истог. За [&hellip;]</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117296,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            2
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2019/12/MIN-ZDRAVLJA-30122019-300x195.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117295"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117295"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117295/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117296"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117295"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117295"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117295"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    },
    {
        "id": 117291,
        "date": "2019-12-30T13:57:27",
        "date_gmt": "2019-12-30T11:57:27",
        "guid": {
            "rendered": "http://zdravko.org.rs/?p=117291"
        },
        "modified": "2019-12-30T13:57:27",
        "modified_gmt": "2019-12-30T11:57:27",
        "slug": "%d0%b8%d0%b7%d0%b0%d1%88%d0%b0%d0%be-%d1%98%d0%b5-%d0%bd%d0%be%d0%b2%d0%be%d0%b3%d0%be%d0%b4%d0%b8%d1%9a%d0%b8-%d0%b1%d1%80%d0%be%d1%98-%d0%bb%d0%b8%d1%81%d1%82%d0%b0-%d0%b7%d0%b4%d1%80%d0%b0%d0%b2",
        "status": "publish",
        "type": "post",
        "link": "http://zdravko.org.rs/%d0%b8%d0%b7%d0%b0%d1%88%d0%b0%d0%be-%d1%98%d0%b5-%d0%bd%d0%be%d0%b2%d0%be%d0%b3%d0%be%d0%b4%d0%b8%d1%9a%d0%b8-%d0%b1%d1%80%d0%be%d1%98-%d0%bb%d0%b8%d1%81%d1%82%d0%b0-%d0%b7%d0%b4%d1%80%d0%b0%d0%b2/",
        "title": {
            "rendered": "ИЗАШАО ЈЕ НОВОГОДИЊИ БРОЈ ЛИСТА ЗДРАВЉЕ"
        },
        "content": {
            "rendered": "<p>Електронско издање листа <strong>ЗДРАВЉЕ бр. 105</strong>  можете преузети кликом на линк испод:</p>\n<p>&nbsp;</p>\n<p><a href=\"/wp-content/uploads/2019/12/Zdravlje-br.-105.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">ПРЕУЗМИТЕ ЗДРАВЉЕ бр.105</a></p>\n",
            "protected": false
        },
        "excerpt": {
            "rendered": "<p>Електронско издање листа ЗДРАВЉЕ бр. 105  можете преузети кликом на линк испод: &nbsp; ПРЕУЗМИТЕ ЗДРАВЉЕ бр.105</p>\n",
            "protected": false
        },
        "author": 1,
        "featured_media": 117292,
        "comment_status": "closed",
        "ping_status": "closed",
        "sticky": false,
        "template": "",
        "format": "standard",
        "meta": [],
        "categories": [
            4
        ],
        "tags": [],
        "featured_image_src": "http://zdravko.org.rs/wp-content/uploads/2019/12/zdravlje-105-300x187.jpg",
        "gallery_images": null,
        "_links": {
            "self": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117291"
                }
            ],
            "collection": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts"
                }
            ],
            "about": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/types/post"
                }
            ],
            "author": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/users/1"
                }
            ],
            "replies": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/comments?post=117291"
                }
            ],
            "version-history": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/posts/117291/revisions"
                }
            ],
            "wp:featuredmedia": [
                {
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media/117292"
                }
            ],
            "wp:attachment": [
                {
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/media?parent=117291"
                }
            ],
            "wp:term": [
                {
                    "taxonomy": "category",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/categories?post=117291"
                },
                {
                    "taxonomy": "post_tag",
                    "embeddable": true,
                    "href": "http://zdravko.org.rs/wp-json/wp/v2/tags?post=117291"
                }
            ],
            "curies": [
                {
                    "name": "wp",
                    "href": "https://api.w.org/{rel}",
                    "templated": true
                }
            ]
        }
    }
]
"""

let jsonData = json.data(using: .utf8)!
