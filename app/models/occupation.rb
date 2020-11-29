class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: "営業"},
    { id: 2, name: "企画"},
    { id: 3, name: "マーケティング"},
    { id: 4, name: "事務"},
    { id: 5, name: "エンジニア"},
    { id: 6, name: "デザイナー"},
    { id: 7, name: "ライター"},
    { id: 8, name: "クリエイター"}
  ]
end
