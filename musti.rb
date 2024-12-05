def toplama_işlemi
  puts "sayı giriniz"
  x = gets.chomp.to_f
  puts "2. sayıyı giriniz"
  y = gets.chomp.to_f
  toplama_sonuc = x + y 
  puts "toplama işleminin sonucu #{toplama_sonuc}"
end

def carpma_islemi
  puts "sayı giriniz"
  c = gets.chomp.to_f
  puts "2. sayıyı giriniz"
  v = gets.chomp.to_f
  carpma_sonuc = c * v
  puts "çarpma işleminin sonucu #{carpma_sonuc}"
end


def square_root
  puts "kökü alınacak sayıyı giriniz"
  a = gets.chomp.to_f
  kök = Math.sqrt(a)
  puts "kökün sonucu: #{kök}"
end

def sin_function
  puts "Sayı gir:"
  x = gets.chomp.to_f
  radian = x * Math::PI / 180
  a = Math.sin(radian)
  puts "sin(#{x.to_f}) = #{a}"
end

def cos_function
  puts "sayı girin"
  x = gets.chomp.to_f
  radian1 = x * Math::PI / 180
  y = Math.cos(radian1)
  puts "cos(#{x}) = #{y}"
end



def tan_function
 puts "sayı girin"
 x = gets.chomp.to_f
 radian2 = x * Math::PI / 180
 y = Math.tan(radian2)
 puts "tan(#{x}) = #{y}"
end


def cot_function
  puts "sayı girin"
  x = gets.chomp.to_f
  radian3 = x * Math::PI / 180
  y = 1 / Math.tan(radian3)
  puts "cot(#{x}) = #{y}"
end


puts "yapmak istediğiniz işlemi seçiniz \n1 = toplama işlemi \n2 = çarpma işlemi \n3 = kök alma işlemi \n4 = sin hesaplama\n5 = cos hesaplama \n6 = tan hesaplama \n7 = cot hesaplama"
q = gets.chomp.to_i
case q
when 1
  toplama_işlemi
when 2
    carpma_islemi
when 3
    square_root
when 4
    sin_function
when 5
    cos_function
when 6
    tan_function
when 7
    cot_function
else
    puts "düzgün tuşlayın!"
end