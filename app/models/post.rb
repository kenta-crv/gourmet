class Post < ApplicationRecord
    mount_uploader :file, ImagesUploader

    
  def to_meta_tags
    {
    	title: title,
    	keyword: keyword,
    	description: description
    }
  end
  
  @@Choicelists = [
        "和食・日本料理",
        "寿司・丼",
        "魚料理",
        "郷土料理",
        "イタリアン",
        "フレンチ",
        "トンカツ",
        "カレー",
        "中華",
        "アジア・エスニック",
        "焼肉・ステーキ",
        "焼鳥・串料理",
        "鍋・しゃぶしゃぶ・すき焼き",
        "居酒屋・バー",
        "カフェ・スイーツ",
        "その他"
  ]

  
  def self.Choicelists
    @@Choicelists
  end

end
