
require "csv" #sample.csvを読み込む

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s.chomp #文字列にし改行を消す

  if memo_type == "1"
    p "拡張機を除いたファイルを入力してください" 
    file_name = gets.chomp

    p "メモしたい内容を入力してください"
    p "完了したらCtrl＋Dを押します"
    input = STDIN.read 

    csv = CSV.open("#{file_name}.csv","w") #"w"は新規作成・上書き
      csv.puts ["#{input}"]
    csv.close
  elsif memo_type == "2"
    p "編集したいファイル名を入力してください" 
    file_name = gets.chomp

    p "編集したい内容を入力してください"
    p "完了したらCtrl＋Dを押します"
    input = STDIN.read

    csv = CSV.open("#{file_name}.csv","a") #"a"は編集
        sv.puts ["#{input}"]
    csv.close   
  end
