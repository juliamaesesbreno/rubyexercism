num = 100

while num >= 1
  num = num - 1
  puts num.to_s + ' bottles of beer on the wall, ' + 
       num.to_s + ' bottles of beer! Take one down, pass it around, ' + 
       (num - 1).to_s + ' bottles of beer on the wall!'
end