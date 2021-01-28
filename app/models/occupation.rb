class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: "企画"},
    { id: 2, name: "マーケティング"},
    { id: 3, name: "資格"},
    { id: 4, name: "エンジニア"},
    { id: 5, name: "デザイナー"},
    { id: 6, name: "ライター"},
    { id: 7, name: "クリエイター"},
    { id: 8, name: "その他"}
  ]
  include ActiveHash::Associations
  has_many :tweets
  has_many :users
end
