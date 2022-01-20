class PortfoliBalance
    input = [ [1, 2, 10], [2, 4, 5], [3, 5, 12] ]
    # input = 
    #     [
    #         [29, 40, 787],[9, 26, 219],[21, 31, 214],[8, 22, 719], [15, 23, 102], [11, 24, 83], [14, 22, 321], [5, 22, 300],
    #         [11, 30, 832], [5, 25, 29], [16, 24, 577], [3, 10, 905], [15, 22, 335], [29, 35, 254], [9, 20, 20], [33, 34, 351],
    #         [30, 38, 564], [11, 31, 969], [3, 32, 11], [29, 35, 267], [4, 24, 531], [1, 38, 892], [12, 18, 825], [25, 32, 99],
    #         [3, 39, 107], [12, 37, 131], [3, 26, 640], [8, 39, 483], [8, 11, 194], [12, 37, 502]
    #     ] n =40

    n = 5
    investments = Array.new(input.length){ Array.new(n,0) }

    output =
    input.map.with_index do |var, i |
        asset_range = (var[0] - 1..var[1] - 1)
        prev = i.zero? ? investments[0] : investments[i - 1]
        cur = investments[i].dup
        cur[(asset_range)] = Array.new(asset_range.size, var[2]) #cur[0..1] = 2, 10
        investments[i] = [cur, prev].transpose.map(&:sum)
    end
    puts max_invested = output.last.max
end