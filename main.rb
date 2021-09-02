
require "csv" #sample.csvを読み込む

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

    if memo_type = "1"
        p "拡張機を除いたファイルを入力してください" 
        file_name = gets.chomp

        p "メモしたい内容を入力してください"
        p "完了したらCtrl＋Dを押します"
        input = STDIN.read 

        csv = CSV.open("#{file_name}.csv","w")
            csv.puts ["#{input}"]
        csv.close

    elsif memo_type = "2"
        p "編集したいファイル名を入力してください" 
        file_name = gets.chomp

        p "編集したい内容を入力してください"
        p "完了したらCtrl＋Dを押します"
        input = STDIN.read

        csv = CSV.open("#{file_name}.csv","a") 
            csv.puts ["#{input}"]
        csv.close   
    end