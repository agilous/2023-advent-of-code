# Advent of Code 2023
My solutions for the [2023 Advent of Code](https://adventofcode.com/2023)
Challenge. [Here](https://github.com/topics/advent-of-code-2023?l=ruby) are
other Ruby based submissions.

**Current Benchmarks**
```
       user       system     total    real
day01  0.078802   0.000582   0.079384 (  0.084521)
day02  0.001070   0.000084   0.001154 (  0.001927)
```

## Requirements
* Ruby 3.1.2
* A recent version of git

## Setup
With the requirements above run the following in a terminal:
```shell
git clone git@github.com:agilous/2023-advent-of-code.git
cd 2023-advent-of-code
./bin/setup
```

## Usage
Substituting the desired day (01-25) for 'XX' below, in a terminal run:
```shell
irb -r ./day_XX/day_XX.rb
```
In the resulting irb session run:
```ruby
DayXX.new.solution
```

## Benchmarks
In a terminal run:
```shell
./bin/benchmark
```

## Testing
In a terminal run:
```shell
./bin/test
```
