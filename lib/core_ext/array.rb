require 'calgonator/sortings/selection'
require 'calgonator/sortings/insertion'

class Array
  include Calgonator::Sortings::Selection
  include Calgonator::Sortings::Insertion
end
