module Calgonator
  module Sortings
    module Merge
      def merge_sort
        _merge_sort self.dup
      end

      def merge_sort!
        _merge_sort self
      end

      private

      def _merge_sort(array)
        return array if array.length <= 1

        mid = array.length / 2

        sorted_left  = _merge_sort(array[0..mid - 1])
        sorted_right = _merge_sort(array[mid..-1])

        _merge(sorted_left, sorted_right)
      end

      def _merge(left, right)
        union = []
        l = 0
        r = 0

        (left.length + right.length).times do
          if r >= right.length || (left[l] && left[l] <= right[r])
            union << left[l]
            l += 1
          else
            union << right[r]
            r += 1
          end
        end

        union
      end
    end
  end
end
