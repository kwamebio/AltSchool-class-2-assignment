puts "What unit do you want to convert from"
user_unit = gets.chomp.to_sym

puts "Please enter the figure you want to convert"
user_input = gets.chomp.to_i

def set_converter(symbol, result)
    
end

alias_method :c, :celsius
alias_method :f, :fahrenheit
alias_method :kg, :kilograms
alias_method :lb, :pounds
alias_method :cm, :centimeter
alias_method :ft, :feet


def temp(celsius, fahrenheit)
    @celsius = 0,
    @fahrenheit = 0

    if user_unit == :c
        return (user_input * 9/5) + 32
    elsif user_unit == :f
        return (user_input - 32) * 5/9
    end
end

def weight(kilograms, pounds)
    @kilograms = 0,
    @pounds = 0

    if user_unit == :kg
        return  (user_input * 2.2046).round(2)
    elsif user_unit == lb
        return (user_input * 0.4535).round(2)
    end
end

def distance(feet, centimeter)
    @feet = 0,
    @centimeter = 0

    if user_unit == :cm
        return (user_input * 1.8 + 32).round(2)
    elsif user_unit == :ft
        return ((user_input - 32) / 1.8).round(2)
    end
end








