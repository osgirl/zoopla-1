require 'curl'
require 'json'
require 'cgi'
require 'hashie'

require File.expand_path('../zoopla/version', __FILE__)
require File.expand_path('../zoopla/errors', __FILE__)
require File.expand_path('../zoopla/api', __FILE__)
require File.expand_path('../zoopla/listings', __FILE__)
require File.expand_path('../zoopla/zed_index', __FILE__)
require File.expand_path('../zoopla/area_value_graphs', __FILE__)
require File.expand_path('../zoopla/property_rich_list', __FILE__)

class Zoopla
  
  def initialize(key)
    @api_key = key
  end
  
  # Delegates to the Rentals class
  # @return [Rentals]
  def rentals
    Rentals.new(@api_key)
  end
  
  # Delegates to the Sales class
  # @return [Sales]
  def sales
    Sales.new(@api_key)
  end
  
  # Delegates to the ZedIndex class
  # @return [ZedIndex]
  def zed_index
    ZedIndex.new(@api_key)
  end
  
  # Delegates to the AreaValueGraphs class
  # @return [AreaValueGraphs]
  def area_value_graphs
    AreaValueGraphs.new(@api_key)
  end
  
  # Delegates to the PropertyRichList class
  # @return [PropertyRichList]
  def property_rich_list
    PropertyRichList.new(@api_key)
  end
  alias_method :rich_list, :property_rich_list
  
end