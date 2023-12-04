require 'minitest/autorun'
require 'minitest/spec'
require_relative './day_01'

describe Day01 do
  describe '#solution' do
    describe 'Part One' do
      before { @day01_part01 = Day01.new(file_path: './day_01/part1_spec_input.txt') }

      it 'is correct' do
        assert_equal(142, @day01_part01.solution)
      end
    end

    describe 'Part Two' do
      before { @day01_part02 = Day01.new(file_path: './day_01/part2_spec_input.txt') }

      it 'is correct' do
        assert_equal(281, @day01_part02.solution)
      end
    end
  end
end
