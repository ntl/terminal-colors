module TerminalColors
  module Palette
    def self.fetch label_or_index
      index = get label_or_index

      if index.nil?
        raise InvalidLabelError, "Invalid label #{label_or_index.inspect}"
      end

      index
    end

    def self.get label_or_index
      case label_or_index
      when Integer then label_or_index
      else list.index label_or_index.to_sym
      end
    end

    def self.list
      @list ||= %i(black red green yellow blue magenta cyan white)
    end
  end
end
