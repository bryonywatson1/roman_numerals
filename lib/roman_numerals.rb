
class Numerals

  Hash = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

def translate(number)
fail 'input must be an integer' if number.is_a?(Integer) == false
fail 'number must be > 0' if number <= 0
string = ""
Hash.each do |k,v|
(number / k).times do
string << v
number -= k
end
end
string
end

end
