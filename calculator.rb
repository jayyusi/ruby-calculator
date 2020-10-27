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
# Date: 2020-10-26
# Time: x:xx PM
# Package: N/A
#
# @author Mohamad Jayyusi - https://github.com/jayyusi
# @version 2.0
#

class Calculator
    attr_accessor :operation
    attr_accessor :number
    attr_accessor :result

    #create the object
    def initialize(number=0, operation='')
        @number = number
        @operation = operation
    end

    def read_num
        #ask user for first number
        begin
            puts "Enter a valid number (e.g. 9 , 9.0 )"
            @number = Float(gets) rescue false # convert input to float, even if its an integer.
        end until ( @number.kind_of? Float ) # loop until user has entered a valid number
        return @number
    end

    def read_operation
        begin
            puts "Enter a valid operation symbol e.g. '+' , '-' , '*', '/'"
            @operation = gets.chomp()
            # validate user input as an operation symbol
        end while (@operation != '+' && @operation != '*' && @operation != '/' && @operation != '-') 
        return @operation
    end

    #calculate
    def calculate(num1=0, num2=0, operation)
        case operation
            when '+'
                result = (num1.to_f + num2.to_f)
            when '*'
                result = (num1.to_f * num2.to_f)
            when '-'
                result = (num1.to_f - num2.to_f)
            when '/'
                result = (num1.to_f / num2.to_f)
        end
        return result
    end
end

if __FILE__ == $0

    begin

        puts '---------------------------------'
        puts '----- Calcuator App started -----'
        puts '---------------------------------'
        puts ''

        #create new calculator object
        calc = Calculator.new
        # read first number
        num1 = calc.read_num
        # read operation 
        operation = calc.read_operation
        # read second number
        num2 = calc.read_num
        # call function to calculate
        result = calc.calculate(num1, num2, operation)
        #print output
        printf("The result of \n%.2f %s %.2f = %.2f \n", num1, operation ,num2, result)

        puts ''
        puts '**********************************************************'
        puts 'Enter q to quit app, or any other key to contiue using app'
        puts '**********************************************************'
        input = gets.chomp()

    end until ( input == 'q' ) # terminate app when user enters 'q'

    #print message for user
    puts 'Exiting app ...'
end