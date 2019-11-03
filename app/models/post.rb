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

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      post = find_by(id: row['id']) || new
      post.attributes = row.to_hash.slice(*updatable_attributes)
      post.save!
    end
  end

  def self.updatable_attributes
    ["title", "file", "choice", "keyword", "description", "body", "store", "tel", "address", "genre", "bookking", "price_lunch", "price_dinner" , "payment" , "hours", "holiday", "evaluation", "csv_file"]
  end

end
