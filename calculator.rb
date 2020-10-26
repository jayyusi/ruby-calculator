#!/usr/bin/env ruby
#
# calculator.rb
#
# Perform basic mathematical operation :
#
# 1) Addition
# 2) Subtraction
# 3) Division
# 4) Multiply
# 
# Date: 2020-10-25
# Time: 4:25 PM
# Package: N/A
#
# @author Mohamad Jayyusi - https://github.com/jayyusi
# @version 1.0
#

begin
    puts '---------------------------------'
    puts '----- Calcuator App started -----'
    puts '---------------------------------'
    puts ''

    #ask user for first number
    begin
        puts "Enter a valid number (e.g. 9 , 9.0 )"
        number1 = Float(gets) rescue false # convert input to float, even if its an integer.
    end until ( number1.kind_of? Float ) # loop until user has entered a valid number

    # Empty line for readability
    puts ''

    begin
        puts "Enter a valid operation symbol e.g. '+' , '-' , '*', '/'"
        operation = gets.chomp()
        # validate user input as an operation symbol
    end while (operation != '+' && operation != '*' && operation != '/' && operation != '-') 

    # Empty line for readability
    puts ''

    #ask user for first number
    begin
        puts "Enter a valid number (e.g. 9 , 9.0 )"
        number2 = Float(gets) rescue false
    end until ( number2.kind_of? Float )

    # Empty line for readability
    puts ''

    case operation
        when '+'
            puts (number1.to_f + number2.to_f)
        when '*'
            puts (number1.to_f * number2.to_f)
        when '-'
            puts (number1.to_f - number2.to_f)
        when '/'
            puts 'The result of' + number1 + ' / ' + number2 + ' is :' + (number1.to_f / number2.to_f)
    end

    puts ''
    puts '**********************************************************'
    puts 'press q to quit app, or any other key to contiue using app'
    puts '**********************************************************'
    input = gets.chomp()

end until ( input == 'q' ) # terminate app when user enters 'q'

#print message for user
puts 'Exiting app ...'