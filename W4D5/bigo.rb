def sluggish
    fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
    longest = fishes[0]
    fishes.each do |fish|
        fishes.each do |fish2|
            if fish2.length >= fish.length && fish2.length > longest.length
                longest = fish2
            end
        end
    end
    longest
end

def dominant(arr)
    a= dominant_merge(arr)
    a.last
end

def dominant_merge(fishes)
    
    return fishes if fishes.length == 1


    mid = fishes.length/2
    left = fishes[0...mid]
    right = fishes[mid..-1]
    sorted = dominant_merge(left) 
    sorted2 = dominant_merge(right)

    merge(sorted,sorted2)
    
end

def merge(left,right)
    sorted = []
    while !left.empty? && !right.empty?
        if left[0].length <= right[0].length
            sorted << left.shift
        else
            sorted << right.shift
        end
    end

    sorted.concat(left)
    sorted.concat(right)

end



def clever(fishes)
    biggest = fishes[0]
    fishes.each do |fish|
        biggest = fish if fish.length > biggest.length
    end
    biggest
end

fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p clever(fish_arr)