class QSort
    attr_accessor :vector

    def initialize(vector = [1,4,3])
        @vector = vector
    end

    def sayhi
        puts @vector.to_s
    end

    def qsort(list)
        return [] if list.size == 0
        x, *xs = *list
        less, more = xs.partition { |y| y < x}
        qsort(less) + [x] + qsort(more)
    end

    def search(value,i,j)
        m = (i+j)/2
        return true if vector[m] == value

        return false if i == j

        if(vector[m] > value)
            search(value,i,m)
        else
            search(value,m+1,j)
        end
    end
end
 
