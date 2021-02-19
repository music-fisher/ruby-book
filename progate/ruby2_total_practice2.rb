characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

characters.each do |character|
  puts "--------------------"
  puts "名前は#{character[:name]}です"
  
  # キー:ageの値に応じて年齢の情報を出力してください
  if character[:age]
    puts "年齢は#{character[:age]}です"
  else
    puts "年齢は秘密です"
  end
  
end