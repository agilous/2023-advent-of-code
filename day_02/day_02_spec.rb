# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/spec'
require_relative './day_02'

describe Day01 do
  describe '#solution' do
    describe 'Part One' do
      before { @day02_part01 = Day02.new(file_path: './day_02/part1_spec_input.txt') }

      it 'is correct' do
        assert_equal(8, @day02_part01.solution)
      end
    end

    describe 'Part Two' do
      before { @day02_part02 = Day02.new(file_path: './day_02/part2_spec_input.txt') }

      it 'is correct' do
        assert_equal(2286, @day02_part02.solution(part: 2))
      end
    end
  end
end
