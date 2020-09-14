# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    [
        {
            first_name: '管理者', last_name: 'admin', email: 'admin@example.com', password: 'password',
            birthday: "1998-12-02", phone: '09012345678', postcode: '2140034', prefecture_code: 14, address_city: "川崎市多摩区",
            address_street: "三田5-1-3", address_building: "グリーンヒルミタ5-310", role: 1
        },
        {
            first_name: 'トレーナー', last_name: '太郎', email: 'trainer@example.com', password: 'password',
            birthday: "1998-12-02",  phone: '09012345678', postcode: '2140034', prefecture_code: 14, address_city: "川崎市多摩区",
            address_street: "三田5-1-3", address_building: "グリーンヒルミタ5-310", role: 2
        },
        {
            first_name: '山田', last_name: '太郎', email: 'taro@example.com', password: 'password',
            birthday: "1998-12-02", phone: '09012345678', postcode: '2140034', prefecture_code: 14, address_city: "川崎市多摩区",
            address_street: "三田5-1-3", address_building: "グリーンヒルミタ5-310", role: 3
        },
    ]
)

Position.create!(
    [{name: "肩"}, {name: "腕"}, {name: "胸"}, {name: "腹筋"}, {name: "背中"}, {name: "脚"}, {name: "有酸素運動"}, {name: "その他"}]
)

TrainingType.create!(
    [
        {name: "フリーウェイト", mets: "6.5"},{name: "マシン", mets: "6.0"},
        {name: "自重", mets: "3.8"},{name: "有酸素運動", mets: "7.0"}
    ]
)

Muscle.create!(
    [
        {position_id: 1, name: '三角筋(フロント)', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 1, name: '三角筋(サイド)', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 1, name: '三角筋(リア)', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 2, name: '上腕二頭筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 2, name: '上腕三頭筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 2, name: '前腕筋群', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 3, name: '大胸筋(上部)', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 3, name: '大胸筋(中部)', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 3, name: '大胸筋(下部)', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 4, name: '腹直筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 4, name: '腹斜筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 5, name: '僧帽筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 5, name: '大円筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 5, name: '広背筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 5, name: '脊柱起立筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 6, name: '大臀筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 6, name: '大腿四頭筋', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 6, name: 'ハムストリングス', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 6, name: 'カーフ', discription: "説明、説明、説明、説明、説明、説明"},
        {position_id: 7, name: '肺活量・体力', discription: "説明、説明、説明、説明、説明、説明"}
    ]
)

MasterEvent.create!(
    [
        {
            training_type_id: 1, name: "サイドレイズ",
            discription: "肩を鍛える種目です。",
            movie_tag: '<iframe width="560" height="315" src="https://www.youtube.com/embed/fcskgffFDZE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
        },
        {
            training_type_id: 1, name: "アームカール",
            discription: "上腕二頭筋を鍛える種目です。",
            movie_tag: '<iframe width="560" height="315" src="https://www.youtube.com/embed/fcskgffFDZE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
        },
        {
            training_type_id: 1, name: "デッドリフト",
            discription: "背中を鍛える種目です。",
            movie_tag: '<iframe width="560" height="315" src="https://www.youtube.com/embed/fcskgffFDZE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
        },
        {
            training_type_id: 1, name: "ベンチプレス",
            discription: "胸筋を鍛える種目です。",
            movie_tag: '<iframe src="https://www.youtube.com/embed/W36C1YcI1MM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
        },
        {
            training_type_id: 3, name: "懸垂(チンニング)",
            discription: "背中を鍛える自重トレーニングです。",
            movie_tag: '<iframe width="560" height="315" src="https://www.youtube.com/embed/fcskgffFDZE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
        },
        {
            training_type_id: 4, name: "ランニング",
            discription: "ダイエットに効果的な有酸素運動です。",
            movie_tag: '<iframe width="560" height="315" src="https://www.youtube.com/embed/fcskgffFDZE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
        }
    ]
)

MasterEventMuscle.create!(
    [
        {master_event_id: 1, muscle_id: 2}, {master_event_id: 2, muscle_id: 4},
        {master_event_id: 3, muscle_id: 12}, {master_event_id: 3, muscle_id: 13}, {master_event_id: 3, muscle_id: 14},
        {master_event_id: 3, muscle_id: 15}, {master_event_id: 3, muscle_id: 16}, {master_event_id: 3, muscle_id: 17},
        {master_event_id: 4, muscle_id: 1}, {master_event_id: 4, muscle_id: 5}, {master_event_id: 4, muscle_id: 8}, {master_event_id: 4, muscle_id: 14},
        {master_event_id: 5, muscle_id: 14}, {master_event_id: 5, muscle_id: 15},
        {master_event_id: 6, muscle_id: 17}, {master_event_id: 6, muscle_id: 20},
    ]
)

now = Time.now
TrainingLog.create!(
    [
        {user_id: 1, master_event_id: 1, recorded_at: now, comment: "メッセージ、メッセージ"},
        {user_id: 1, master_event_id: 2, recorded_at: now, comment: "メッセージ、メッセージ"},
        {user_id: 1, master_event_id: 4, recorded_at: now, comment: "メッセージ、メッセージ"}
    ]
)

TrainingSet.create!(
    [
        {training_log_id: 1, weight: 5, reps: 10, training_time: "00:01:30"},
        {training_log_id: 1, weight: 5, reps: 10, training_time: "00:01:30"},
        {training_log_id: 1, weight: 4, reps: 10, training_time: "00:01:30"},
        {training_log_id: 2, weight: 10, reps: 10, training_time: "00:01:30"},
        {training_log_id: 2, weight: 11, reps: 10, training_time: "00:01:30"},
        {training_log_id: 2, weight: 13, reps: 8, training_time: "00:01:30"},
        {training_log_id: 3, weight: 20, reps: 20, training_time: "00:03:00"},
        {training_log_id: 3, weight: 45, reps: 10, training_time: "00:02:00"},
        {training_log_id: 3, weight: 47.5, reps: 8, training_time: "00:02:00"},
        {training_log_id: 3, weight: 45, reps: 10, training_time: "00:02:00"},
    ]
)
