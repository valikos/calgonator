module Calgonator
  module Sortings
    module Insertion
      def insertion_sort
        _insertion_sort self.dup
      end

      def insertion_sort!
        _insertion_sort self
      end

      private

      def _insertion_sort(array)
        n = array.length - 1

        1.upto(n) do |i|
          key = array[i]
          j = i - 1

          while j >= 0 && array[j] > key
            array[j + 1] = array[j]
            j -= 1
          end

          array[j + 1] = key
        end

        array
      end
    end
  end
end
