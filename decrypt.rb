print "masukan data yang ingin di decrypt : "
variable = gets.chomp

number = -1
variable.each_byte { |c| asci = c; number+=1; key = asci - number; normal = key.chr; print normal }
