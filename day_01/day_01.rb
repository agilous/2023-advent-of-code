# frozen_string_literal: true

require 'debug'

class Day01
  def initialize(file_path: './day_01/input.txt')
    @result = 0
    @file_path = file_path
  end

  def solution
    numbers = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

    File.readlines(@file_path, chomp: true).each do |line|
      line_head = ''
      first_digit = nil

      line_tail = ''
      last_digit = nil

      line.length.times do |i|
        break if first_digit && last_digit

        unless first_digit
          line_head += line[i]
          first_word = line_head.match(numbers.keys.join('|'))&.to_s
          first_digit = numbers[first_word] if first_word

          first_digit = line_head.match(numbers.values.join('|'))&.to_s unless first_digit
        end

        unless last_digit
          line_tail = line_tail.dup.prepend(line[line.length - 1 - i])
          last_word = line_tail.match(numbers.keys.join('|'))&.to_s
          last_digit = numbers[last_word] if last_word

          last_digit = line_tail.match(numbers.values.join('|'))&.to_s unless last_digit
        end
      end

      @result += "#{first_digit}#{last_digit}".to_i
    end

    @result
  end
end
