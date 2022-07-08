# frozen_string_literal: true
sum = 0
24.times { |i|
  sum += 500
  puts "Месяц #{i + 1}, у бабушки в сундуке #{sum}"
}
80.times {print '=' }
puts
24.times do |i|
  sum += 500 + sum * 0.1
  puts "Месяц #{i + 1}, у бабушки в сундуке #{sum}"
end

80.times {print '=' }
puts
puts 'Сколько для каждого года  сумма, которую осталось выплатить.
'
sum = 0
full_year = 500000
integer = 30.times do |i|
  full_year = full_year - 16666
  puts "Год #{i + 1}, осталось #{full_year}"
end

=begin
80.times {print '=' }
puts
puts 'Остаток процентов'
sum = 0
full_year = 500000
sum_proc  = full_year * 0.04
full = full_year + sum_proc

integer = 30.times do |i|
  full = (full + sum_proc) - 36600
  puts "Год #{i + 1}, осталось #{full}"
end
=end

80.times {print '=' }
puts
puts 'Остаток процентов'
sum = 0
full_year = 500000

integer = 30.times do |i|
  proc = full_year * 0.04
  full_year = full_year + proc - (proc + 16666)
  puts "Год #{i + 1}, осталось #{proc}"
end

80.times {print '=' }
puts
puts 'Сумма процентов'
sum = 0
full_year = 500000
sum_proc = 0
integer = 30.times do |i|
  proc = full_year * 0.04
    full_year = full_year + proc - (proc + 16666)
  puts "Год #{i + 1}, осталось #{proc}"
  sum_proc = sum_proc + proc
end
puts sum_proc




