# frozen_string_literal: true

require 'debug'

class Day02
  def initialize(file_path: './day_02/input.txt', max_cubes: { blue: 14, green: 13, red: 12 })
    @file_path = file_path
    @max_cubes = max_cubes
    @sum = 0
    @sum_of_powers = 0
  end

  def solution(part: 1)
    games = []
    File.readlines(@file_path, chomp: true).each do |line|
      game, cubes = line.split(':')
      _, number = game.split
      samples = cubes.split(';')
                     .map { |cube| cube.split(',') }
                     .map do |arr|
                       arr.to_h do |item|
                         key, value = item.split.reverse
                         [key, value.strip.to_i]
                       end
                     end
      games << { number: number.to_i, samples: }
    end

    games.each do |g|
      @sum += g[:number] if g[:samples].all? { |s| valid?(blue: s['blue'], green: s['green'], red: s['red']) }
      @sum_of_powers += powers(samples: g[:samples])
    end

    part == 2 ? @sum_of_powers : @sum
  end

  private

  def powers(samples: [])
    samples.each_with_object({ 'blue' => nil, 'green' => nil, 'red' => nil }) do |sample, maxes|
      maxes.each_key do |key|
        maxes[key] = sample[key] if sample[key] && (maxes[key].nil? || sample[key] > maxes[key])
      end
    end.values.reduce(&:*)
  end

  def valid?(blue:, green:, red:)
    (blue || 0) <= @max_cubes[:blue] && (green || 0) <= @max_cubes[:green] && (red || 0) <= @max_cubes[:red]
  end
end
