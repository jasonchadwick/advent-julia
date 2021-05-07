using DataFrames
using CSV

function day01()
    open("input/01.txt") do file
        nums = map((x) -> parse(Int, x), readlines(file))

        for n in nums, m in nums
            if n + m == 2020
                return n * m
                break
            end
        end
    end
end

println(day01())