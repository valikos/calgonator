module Calgonator
  module Sortings
    module Selection
      def selection_sort
        _selection_sort self.dup
      end

      def selection_sort!
        _selection_sort self
      end

      private

      def _selection_sort(array)
        n = array.length - 1

        0.upto(n) do |i|
          smallest = i
          (i + 1..n).each do |j|
            if array[j] < array[smallest]
              smallest = j
            end
          end
          array[i], array[smallest] = array[smallest], array[i]
        end

        array
      end
    end
  end
end
