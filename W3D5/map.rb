require "byebug"
class Map
    def initialize
        @map = Array.new() {Array.new()}
    end
    def set(key,value)
        key_arr = []
        @map.each do |sub_arr|
            key_arr << sub_arr[0]
        end

        if key_arr.include?(key)
            @map[key_arr.index(key)][1] = value
        else
            @map << [key,value]
        end
    end
    def get(key)
        key_arr = []
        @map.each do |sub_arr|
            key_arr << sub_arr[0]
        end
        @map[key_arr.index(key)][1]
    end

    def delete(key)
        key_arr = []
        @map.each do |sub_arr|
            key_arr << sub_arr[0]
        end
        @map.delete_at(key_arr.index(key))if key_arr.include?(key)
    end

    def show
        @map
    end
end