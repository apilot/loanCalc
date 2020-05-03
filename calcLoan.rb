print "Введите сумму кредита:"
sum = gets.chomp.to_i
print "Введите срок кредита (в годах):"
year = gets.chomp.to_i
print "Введите проценты за год:"
proc = gets.chomp.to_i
calc = sum/year
ost = sum
summYears = 0
year.times do |i|
  inYear = calc + ost*proc/100
  puts "за #{i+1} год мы заплатим #{inYear} "
  calcM = calc/12
  ostM = ost
  12.times do |m|
    inMonth = calcM + ostM*proc/100/12
    puts "за #{m+1} месяц #{i+1}  года, ежемесячный платеж: #{inMonth}"
    ostM = ostM - calcM

  end
  puts "=" * 50
  ost = ost - calc
  puts "Оставшаяся сумма на конец года: #{ost}"
  summYears = summYears + inYear
end
puts "Всего мы заплатим: #{summYears} из этой суммы: #{summYears - sum} будут проценты"
