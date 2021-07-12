class LRUCache
    def initialize(n)
        @cache = []
        @size = n
        
    end

    def count
      @cache.size
    end

    def add(el)
     if @cache.include?(ele)
        @cache.delete(el)
        @cache << el
     elsif @cach.count > @size
        @cache.shift
        @cache << ele
     else
        @cache << ele
     end
    end

    def show
      @cache
    end

    private
    # helper methods go here!

  end