module Jekyll
  module DataFilter
    def data_filter(data, filter_string)
      return data unless filter_string
      return data if filter_string.strip.empty?

      # Parse filter string (e.g., "group: featured" or "tags: network-aligners")
      parts = filter_string.split(':', 2).map(&:strip)
      return data if parts.length != 2
      
      key = parts[0]
      value = parts[1]
      
      data.select do |item|
        if key == 'tags'
          # For tags, check if array contains value
          item['tags']&.include?(value)
        else
          # For other keys, direct comparison
          item[key].to_s == value
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::DataFilter)
