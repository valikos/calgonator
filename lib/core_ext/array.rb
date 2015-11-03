require 'calgonator/sortings/selection'
require 'calgonator/sortings/insertion'
require 'calgonator/sortings/merge'

class Array
  include Calgonator::Sortings::Selection
  include Calgonator::Sortings::Insertion
  include Calgonator::Sortings::Merge
end
