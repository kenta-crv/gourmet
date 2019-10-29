class AddColumnToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :store, :string #店舗名
    add_column :posts, :tel, :string #電話番号
    add_column :posts, :address, :string #住所
    add_column :posts, :genre, :string #ジャンル
    add_column :posts, :bookking, :string #予約
    add_column :posts, :price_lunch, :string #ランチ単価
    add_column :posts, :price_dinner, :string #ディナー単価
    add_column :posts, :payment, :string #支払方法
    add_column :posts, :hours, :string #営業時間
    add_column :posts, :holiday, :string #定休日
    add_column :posts, :evaluation, :string #評価
  end
end
